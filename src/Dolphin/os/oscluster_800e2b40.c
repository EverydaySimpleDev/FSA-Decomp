#include "types.h"

extern f32 jumptable_8049BD98;
extern f32 lbl_80463588;
extern f32 lbl_80499520;
extern f32 lbl_80499548;
extern f32 lbl_8049BDE4;
extern f32 lbl_8049BDF8;
extern f32 lbl_8049BE20;
extern f32 lbl_8049BE60;
extern f32 lbl_8049BEA0;
extern f32 lbl_804BA5D4;
extern f32 lbl_80536C50;
extern f32 lbl_80539BA0;
extern f32 lbl_80539E20;
extern f32 lbl_80539E24;
extern f32 lbl_80539E28;
extern f32 lbl_80539E30;
extern f32 lbl_80539E34;
extern f32 lbl_80539E38;
extern f32 lbl_80539E3C;
extern f32 lbl_80539E40;
extern f32 lbl_80539E44;
extern f32 lbl_80539E48;
extern f32 lbl_80539E4C;
extern f32 lbl_80539E50;
extern f32 lbl_80539E54;
extern f32 lbl_80539E58;
extern f32 lbl_8053A8E0;
extern f32 lbl_8053A8F0;
extern f32 lbl_8053A8F8;
extern f32 lbl_8053A968;
extern f32 lbl_8053A980;
extern f32 lbl_8053A984;
extern f32 lbl_8053A988;
extern f32 lbl_8053A998;
extern f32 lbl_8053A9E8;
extern f32 lbl_8053A9F0;
extern f32 lbl_8053AA28;
extern f32 lbl_8053AA2C;
extern f32 lbl_8053AA30;
extern f32 lbl_8053AA34;
extern f32 lbl_8053AA38;
extern f32 lbl_8053AA3C;
extern f32 lbl_8053AA40;
extern f32 lbl_8053AA44;
extern f32 lbl_8053AA48;
extern f32 lbl_8053AA4C;
extern f32 lbl_8053AA50;
extern f32 lbl_8053AA58;
extern f32 lbl_8053AA5C;
extern f32 lbl_8053AA60;
extern f32 lbl_8053AA64;
extern f32 lbl_8053AA68;
extern f32 lbl_8053BCE0;
extern f32 lbl_8053BCE8;
extern f32 lbl_8053BCEC;
extern f32 lbl_8053BCF0;
extern f32 lbl_8053BCF4;
extern f32 lbl_8053BCF8;
extern f32 lbl_8053BD00;
extern f32 lbl_8053BD04;
extern f32 lbl_8053BD08;
extern f32 lbl_8053BD10;
extern f32 lbl_8053BD18;
extern f32 lbl_8053BD20;

extern void DVDInit(void);
extern void OSCreateAlarm(void);
extern void OSDisableInterrupts(void);
extern void OSGetCurrentThread(void);
extern void OSGetTick(void);
extern void OSGetTime(void);
extern void OSInit(void);
extern void OSReceiveMessage(void);
extern void OSReport(void);
extern void OSRestoreInterrupts(void);
extern void OSResumeThread(void);
extern void OSSetAlarm(void);
extern void OSSuspendThread(void);
extern void __cvt_dbl_usll(void);
extern void dtor_80084580(void);
extern void fn_8004061C(void);
extern void PSMTXCopy(void);
extern void PSMTXConcat(void);
extern void PSMTXLightFrustum(void);
extern void fn_8004CF18(void);
extern void fn_8004D140(void);
extern void fn_8005A144(void);
extern void fn_8005A464(void);
extern void fn_8005AD7C(void);
extern void fn_8005ADB4(void);
extern void fn_8005B6AC(void);
extern void fn_8005B6BC(void);
extern void fn_8005B93C(void);
extern void fn_8005BA0C(void);
extern void fn_8005BBD4(void);
extern void fn_8005BD44(void);
extern void fn_8005BDDC(void);
extern void fn_8005BE5C(void);
extern void fn_8005C24C(void);
extern void fn_8005C46C(void);
extern void fn_8005C508(void);
extern void fn_8005C600(void);
extern void fn_8005C788(void);
extern void fn_8005C7E0(void);
extern void fn_8005C870(void);
extern void fn_8005CAA8(void);
extern void fn_8005CB74(void);
extern void fn_8005CBEC(void);
extern void fn_8005CDF4(void);
extern void fn_8005CE08(void);
extern void fn_8005D3C8(void);
extern void fn_8005D404(void);
extern void fn_8005D6E0(void);
extern void fn_8005D974(void);
extern void fn_8005DC74(void);
extern void fn_8005DEC4(void);
extern void fn_8005EA6C(void);
extern void fn_8005EAB0(void);
extern void fn_8005EAF4(void);
extern void fn_8005EB5C(void);
extern void fn_8005EBC4(void);
extern void fn_8005EEB0(void);
extern void fn_8005EEF4(void);
extern void fn_8005EF80(void);
extern void fn_8005F11C(void);
extern void fn_8005F48C(void);
extern void fn_8005F50C(void);
extern void fn_8005F538(void);
extern void fn_8005F56C(void);
extern void fn_8005F5A0(void);
extern void fn_8005F674(void);
extern void fn_8005F6A0(void);
extern void fn_8005FC54(void);
extern void fn_8005FCC4(void);
extern void fn_8005FDF4(void);
extern void fn_8005FE94(void);
extern void fn_8006000C(void);
extern void fn_800600C0(void);
extern void fn_80060AC4(void);
extern void* JKRAram_create(void);
extern void fn_80081454(void);
extern void fn_800814D4(void);
extern void fn_800838C8(void);
extern void fn_80084370(void);
extern void fn_80084478(void);
extern void fn_800844C4(void);
extern void fn_800855CC(void);
extern void fn_80086E2C(void);
extern void fn_80086E44(void);
extern void fn_80086F58(void);
extern void fn_80087298(void);
extern void fn_80087ABC(void);
extern void fn_80087AC0(void);
extern void fn_80087BAC(void);
extern void fn_80087DC0(void);
extern void fn_80088B7C(void);
extern void fn_80088D1C(void);
extern void fn_80088F88(void);
extern void fn_80088F98(void);
extern void fn_800891B8(void);
extern void fn_80089264(void);
extern void fn_8008927C(void);
extern void fn_800898B0(void);
extern void fn_80089C70(void);
extern void fn_80089FF0(void);
extern void fn_8008C944(void);
extern void fn_8008CB40(void);
extern void fn_8008D110(void);
extern void fn_8008E7A4(void);
extern void fn_8008EC64(void);
extern void fn_8008ED94(void);
extern void fn_8008EDD4(void);
extern void fn_8008EEA4(void);
extern void fn_80090DF0(void);
extern void fn_80092A98(void);
extern void fn_80092EC8(void);
extern void fn_80092EF0(void);
extern void fn_80092FD0(void);
extern void fn_80093048(void);
extern void fn_80093060(void);
extern void fn_80093108(void);
extern void fn_800937B0(void);
extern void fn_80093894(void);
extern void fn_800BB798(void);
extern void fn_800BB7E8(void);
extern void fn_800BB8D8(void);
extern void fn_800BBA14(void);
extern void fn_800BC0C0(void);
extern void fn_800BCE64(void);
extern void fn_800BCEE4(void);
extern void fn_800BD2CC(void);
extern void fn_800C8AE0(void);
extern void fn_800C8DAC(void);
extern void fn_800C8F54(void);
extern void fn_800C919C(void);
extern void fn_800C9224(void);
extern void fn_800CAAB4(void);
extern void fn_800CE21C(void);
extern void fn_800CE43C(void);
extern void fn_800CEB28(void);
extern void fn_800CEBB4(void);

ASM void fn_800E2B40(void);
ASM void fn_800E2B80(void);
ASM void fn_800E2D30(void);
ASM void fn_800E2DFC(void);
ASM void fn_800E300C(void);
ASM void fn_800E309C(void);
ASM void fn_800E30C8(void);
ASM void fn_800E30D8(void);
ASM void fn_800E30EC(void);
ASM void fn_800E31D0(void);
ASM void fn_800E3284(void);
ASM void fn_800E32A0(void);
ASM void fn_800E3340(void);
ASM void fn_800E335C(void);
ASM void fn_800E33FC(void);
ASM void fn_800E34CC(void);
ASM void fn_800E3550(void);
ASM void fn_800E36AC(void);
ASM void fn_800E3820(void);
ASM void fn_800E3890(void);
ASM void fn_800E3898(void);
ASM void fn_800E3920(void);
ASM void fn_800E3950(void);
ASM void fn_800E3968(void);
ASM void fn_800E3994(void);
ASM void fn_800E39DC(void);
ASM void fn_800E3A20(void);
ASM void fn_800E3B3C(void);
ASM void fn_800E3BA0(void);
ASM void fn_800E3BFC(void);
ASM void fn_800E3C28(void);
ASM void fn_800E3D08(void);
ASM void fn_800E3F1C(void);
ASM void fn_800E413C(void);
ASM void fn_800E43B4(void);
ASM void fn_800E4570(void);
ASM void fn_800E46C0(void);
ASM void fn_800E4778(void);
ASM void fn_800E47DC(void);
ASM void fn_800E4870(void);
ASM void fn_800E48EC(void);
ASM void fn_800E4910(void);
ASM void fn_800E49BC(void);
ASM void fn_800E49E0(void);
ASM void fn_800E4D30(void);
ASM void fn_800E4DAC(void);
ASM void fn_800E4EE0(void);
ASM void fn_800E53E8(void);
ASM void fn_800E5748(void);
ASM void fn_800E5904(void);
ASM void fn_800E5954(void);
ASM void fn_800E5A74(void);
ASM void fn_800E5AB4(void);
ASM void fn_800E5B70(void);
ASM void fn_800E5BE4(void);
ASM void fn_800E5C10(void);
ASM void fn_800E5C54(void);
ASM void fn_800E5FC4(void);
ASM void fn_800E6198(void);
ASM void fn_800E6224(void);
ASM void fn_800E6314(void);
ASM void fn_800E633C(void);

ASM void fn_800E2B40(void)
{
    nofralloc
    lwz r0, 0xc(r4)
    addi r4, r4, 0x20
    mtctr r0
    cmplwi r0, 0x0
    opword  0x40810028  // ble .L_800E2B78
L_800E2B54:
    lwz r3, 0x0(r4)
    subis r0, r3, 0x4d41
    cmplwi r0, 0x5433
    opword  0x4082000C  // bne .L_800E2B6C
    lhz r3, 0x8(r4)
    blr
L_800E2B6C:
    lwz r0, 0x4(r4)
    add r4, r4, r0
    opword  0x4200FFE0  // bdnz .L_800E2B54
L_800E2B78:
    li r3, 0x0
    blr
}

ASM void fn_800E2B80(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    lis r6, 0x4d41
    stw r0, 0x34(r1)
    stmw r25, 0x14(r1)
    mr r26, r3
    lwz r25, 0xc(r4)
    mr r27, r5
    addi r29, r4, 0x20
    addi r31, r6, 0x5432
    li r28, 0x0
    li r30, 0xe4
    opword  0x48000160  // b .L_800E2D10
L_800E2BB4:
    lwz r4, 0x0(r29)
    cmpw r4, r31
    opword  0x41820148  // beq .L_800E2D04
    opword  0x40800054  // bge .L_800E2C14
    lis r3, 0x494e
    addi r0, r3, 0x4631
    cmpw r4, r0
    opword  0x41820094  // beq .L_800E2C64
    opword  0x4080002C  // bge .L_800E2C00
    lis r3, 0x4556
    addi r0, r3, 0x5031
    cmpw r4, r0
    opword  0x418200FC  // beq .L_800E2CE0
    opword  0x4080011C  // bge .L_800E2D04
    lis r3, 0x4452
    addi r0, r3, 0x5731
    cmpw r4, r0
    opword  0x418200FC  // beq .L_800E2CF4
    opword  0x48000108  // b .L_800E2D04
L_800E2C00:
    lis r3, 0x4a4e
    addi r0, r3, 0x5431
    cmpw r4, r0
    opword  0x41820070  // beq .L_800E2C7C
    opword  0x480000F4  // b .L_800E2D04
L_800E2C14:
    lis r3, 0x5445
    addi r0, r3, 0x5831
    cmpw r4, r0
    opword  0x418200AC  // beq .L_800E2CCC
    opword  0x4080002C  // bge .L_800E2C50
    lis r3, 0x5348
    addi r0, r3, 0x5031
    cmpw r4, r0
    opword  0x41820080  // beq .L_800E2CB4
    opword  0x408000CC  // bge .L_800E2D04
    lis r3, 0x4d41
    addi r0, r3, 0x5434
    cmpw r4, r0
    opword  0x408000BC  // bge .L_800E2D04
    opword  0x48000044  // b .L_800E2C90
L_800E2C50:
    lis r3, 0x5654
    addi r0, r3, 0x5831
    cmpw r4, r0
    opword  0x418200A8  // beq .L_800E2D04
    opword  0x480000A4  // b .L_800E2D04
L_800E2C64:
    mr r3, r26
    mr r4, r29
    mr r5, r27
    bl fn_800E300C
    add r30, r30, r3
    opword  0x4800008C  // b .L_800E2D04
L_800E2C7C:
    mr r3, r26
    mr r4, r29
    bl fn_800E309C
    add r30, r30, r3
    opword  0x48000078  // b .L_800E2D04
L_800E2C90:
    mr r3, r26
    mr r4, r29
    lwz r12, 0x0(r26)
    mr r5, r27
    lwz r12, 0x3c(r12)
    mtctr r12
    bctrl
    add r30, r30, r3
    opword  0x48000054  // b .L_800E2D04
L_800E2CB4:
    mr r3, r26
    mr r4, r29
    mr r5, r27
    bl fn_800E31D0
    add r30, r30, r3
    opword  0x4800003C  // b .L_800E2D04
L_800E2CCC:
    mr r3, r26
    mr r4, r29
    bl fn_800E3284
    add r30, r30, r3
    opword  0x48000028  // b .L_800E2D04
L_800E2CE0:
    mr r3, r26
    mr r4, r29
    bl fn_800E30C8
    add r30, r30, r3
    opword  0x48000014  // b .L_800E2D04
L_800E2CF4:
    mr r3, r26
    mr r4, r29
    bl fn_800E30D8
    add r30, r30, r3
L_800E2D04:
    lwz r0, 0x4(r29)
    addi r28, r28, 0x1
    add r29, r29, r0
L_800E2D10:
    cmplw r28, r25
    opword  0x4180FEA0  // blt .L_800E2BB4
    mr r3, r30
    lmw r25, 0x14(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800E2D30(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    lis r5, 0x4d41
    stw r0, 0x34(r1)
    stmw r25, 0x14(r1)
    mr r25, r3
    lwz r31, 0xc(r4)
    addi r28, r4, 0x20
    addi r30, r5, 0x5433
    li r27, 0x0
    li r26, 0x0
    li r29, 0x20
    opword  0x48000070  // b .L_800E2DD0
L_800E2D64:
    lwz r4, 0x0(r28)
    cmpw r4, r30
    opword  0x41820020  // beq .L_800E2D8C
    opword  0x40800008  // bge .L_800E2D78
    opword  0x48000050  // b .L_800E2DC4
L_800E2D78:
    lis r3, 0x5445
    addi r0, r3, 0x5831
    cmpw r4, r0
    opword  0x4182002C  // beq .L_800E2DB0
    opword  0x4800003C  // b .L_800E2DC4
L_800E2D8C:
    mr r3, r25
    mr r4, r28
    lwz r12, 0x0(r25)
    lis r5, 0x5110
    lwz r12, 0x40(r12)
    mtctr r12
    bctrl
    add r29, r29, r3
    opword  0x48000018  // b .L_800E2DC4
L_800E2DB0:
    mr r3, r25
    mr r4, r28
    bl fn_800E3340
    add r29, r29, r3
    li r27, 0x1
L_800E2DC4:
    lwz r0, 0x4(r28)
    addi r26, r26, 0x1
    add r28, r28, r0
L_800E2DD0:
    cmplw r26, r31
    opword  0x4180FF90  // blt .L_800E2D64
    clrlwi. r0, r27, 24
    opword  0x40820008  // bne .L_800E2DE4
    addi r29, r29, 0xc
L_800E2DE4:
    mr r3, r29
    lmw r25, 0x14(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800E2DFC(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stmw r23, 0xc(r1)
    mr r25, r5
    lis r5, 0x4d41
    lwz r23, 0xc(r4)
    mr r24, r3
    addi r27, r4, 0x20
    rlwinm r30, r25, 0, 6, 7
    rlwinm r29, r25, 0, 18, 19
    addi r31, r5, 0x5433
    li r26, 0x0
    li r28, 0xe4
    opword  0x480001B8  // b .L_800E2FEC
L_800E2E38:
    lwz r4, 0x0(r27)
    cmpw r4, r31
    opword  0x4182011C  // beq .L_800E2F5C
    opword  0x40800058  // bge .L_800E2E9C
    lis r3, 0x494e
    addi r0, r3, 0x4631
    cmpw r4, r0
    opword  0x41820098  // beq .L_800E2EEC
    opword  0x4080002C  // bge .L_800E2E84
    lis r3, 0x4556
    addi r0, r3, 0x5031
    cmpw r4, r0
    opword  0x41820154  // beq .L_800E2FBC
    opword  0x40800174  // bge .L_800E2FE0
    lis r3, 0x4452
    addi r0, r3, 0x5731
    cmpw r4, r0
    opword  0x41820154  // beq .L_800E2FD0
    opword  0x48000160  // b .L_800E2FE0
L_800E2E84:
    lis r3, 0x4a4e
    addi r0, r3, 0x5431
    cmpw r4, r0
    opword  0x41820074  // beq .L_800E2F04
    opword  0x4180014C  // blt .L_800E2FE0
    opword  0x48000148  // b .L_800E2FE0
L_800E2E9C:
    lis r3, 0x5445
    addi r0, r3, 0x5831
    cmpw r4, r0
    opword  0x41820088  // beq .L_800E2F30
    opword  0x4080002C  // bge .L_800E2ED8
    lis r3, 0x5348
    addi r0, r3, 0x5031
    cmpw r4, r0
    opword  0x4182005C  // beq .L_800E2F18
    opword  0x40800120  // bge .L_800E2FE0
    lis r3, 0x4d44
    addi r0, r3, 0x4c33
    cmpw r4, r0
    opword  0x41820074  // beq .L_800E2F44
    opword  0x4800010C  // b .L_800E2FE0
L_800E2ED8:
    lis r3, 0x5654
    addi r0, r3, 0x5831
    cmpw r4, r0
    opword  0x418200FC  // beq .L_800E2FE0
    opword  0x480000F8  // b .L_800E2FE0
L_800E2EEC:
    mr r3, r24
    mr r4, r27
    mr r5, r25
    bl fn_800E300C
    add r28, r28, r3
    opword  0x480000E0  // b .L_800E2FE0
L_800E2F04:
    mr r3, r24
    mr r4, r27
    bl fn_800E309C
    add r28, r28, r3
    opword  0x480000CC  // b .L_800E2FE0
L_800E2F18:
    mr r3, r24
    mr r4, r27
    mr r5, r25
    bl fn_800E31D0
    add r28, r28, r3
    opword  0x480000B4  // b .L_800E2FE0
L_800E2F30:
    mr r3, r24
    mr r4, r27
    bl fn_800E3284
    add r28, r28, r3
    opword  0x480000A0  // b .L_800E2FE0
L_800E2F44:
    mr r3, r24
    mr r4, r27
    mr r5, r25
    bl fn_800E33FC
    add r28, r28, r3
    opword  0x48000088  // b .L_800E2FE0
L_800E2F5C:
    cmplwi r29, 0x0
    lis r5, 0x5010
    stw r27, 0x10(r24)
    or r5, r5, r30
    opword  0x4082002C  // bne .L_800E2F98
    li r0, 0x1
    mr r3, r24
    stb r0, 0x18(r24)
    mr r4, r27
    lwz r12, 0x0(r24)
    lwz r12, 0x3c(r12)
    mtctr r12
    bctrl
    add r28, r28, r3
    opword  0x4800004C  // b .L_800E2FE0
L_800E2F98:
    cmplwi r29, 0x2000
    opword  0x40820044  // bne .L_800E2FE0
    li r0, 0x1
    mr r3, r24
    stb r0, 0x18(r24)
    mr r4, r27
    bl fn_800E335C
    add r28, r28, r3
    opword  0x48000028  // b .L_800E2FE0
L_800E2FBC:
    mr r3, r24
    mr r4, r27
    bl fn_800E30C8
    add r28, r28, r3
    opword  0x48000014  // b .L_800E2FE0
L_800E2FD0:
    mr r3, r24
    mr r4, r27
    bl fn_800E30D8
    add r28, r28, r3
L_800E2FE0:
    lwz r0, 0x4(r27)
    addi r26, r26, 0x1
    add r27, r27, r0
L_800E2FEC:
    cmplw r26, r23
    opword  0x4180FE48  // blt .L_800E2E38
    mr r3, r28
    lmw r23, 0xc(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800E300C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r6, r4
    stw r0, 0x14(r1)
    lhz r0, 0x8(r4)
    stw r31, 0xc(r1)
    li r31, 0x0
    or r0, r5, r0
    clrlwi r0, r0, 28
    stw r30, 0x8(r1)
    cmpwi r0, 0x1
    mr r30, r3
    opword  0x41820028  // beq .L_800E3064
    opword  0x40800010  // bge .L_800E3050
    cmpwi r0, 0x0
    opword  0x40800014  // bge .L_800E305C
    opword  0x48000024  // b .L_800E3070
L_800E3050:
    cmpwi r0, 0x3
    opword  0x4080001C  // bge .L_800E3070
    opword  0x48000014  // b .L_800E306C
L_800E305C:
    li r31, 0x4
    opword  0x48000010  // b .L_800E3070
L_800E3064:
    li r31, 0x4
    opword  0x48000008  // b .L_800E3070
L_800E306C:
    li r31, 0x4
L_800E3070:
    lwz r4, 0x14(r6)
    mr r3, r6
    bl fn_800CE21C
    stw r3, 0x14(r30)
    mr r3, r31
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E309C(void)
{
    nofralloc
    lwz r0, 0x14(r4)
    li r3, 0x0
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_800E30B0
    li r3, 0x10
L_800E30B0:
    lhz r4, 0x8(r4)
    mulli r0, r4, 0x5c
    slwi r4, r4, 2
    add r3, r3, r4
    add r3, r3, r0
    blr
}

ASM void fn_800E30C8(void)
{
    nofralloc
    lhz r0, 0x8(r4)
    sth r0, 0x1a(r3)
    li r3, 0x0
    blr
}

ASM void fn_800E30D8(void)
{
    nofralloc
    lhz r3, 0x1a(r3)
    lhz r0, 0x8(r4)
    subf r0, r3, r0
    slwi r3, r0, 1
    blr
}

ASM void fn_800E30EC(void)
{
    nofralloc
    stwu r1, -0xb0(r1)
    mflr r0
    stw r0, 0xb4(r1)
    addi r3, r1, 0x8
    stmw r27, 0x9c(r1)
    mr r28, r4
    mr r27, r5
    li r31, 0x0
    bl fn_800C8F54
    lhz r30, 0x8(r28)
    addi r3, r1, 0x8
    bl fn_800C9224
    lwz r0, 0x14(r28)
    clrlwi r29, r3, 16
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_800E3130
    li r31, 0x10
L_800E3130:
    rlwinm. r4, r27, 0, 10, 10
    slwi r0, r30, 2
    add r31, r31, r0
    opword  0x41820014  // beq .L_800E3150
    mulli r3, r29, 0x4c
    addi r0, r3, 0x1f
    clrrwi r0, r0, 5
    add r31, r31, r0
L_800E3150:
    cmplwi r4, 0x0
    opword  0x41820034  // beq .L_800E3188
    li r28, 0x0
    opword  0x48000024  // b .L_800E3180
L_800E3160:
    mr r6, r28
    mr r7, r27
    addi r3, r1, 0x8
    li r4, 0x0
    li r5, 0x0
    bl fn_800CAAB4
    add r31, r31, r3
    addi r28, r28, 0x1
L_800E3180:
    cmplw r28, r29
    opword  0x4180FFDC  // blt .L_800E3160
L_800E3188:
    li r28, 0x0
    opword  0x48000024  // b .L_800E31B0
L_800E3190:
    mr r6, r28
    mr r7, r27
    addi r3, r1, 0x8
    li r4, 0x0
    li r5, 0x0
    bl fn_800CAAB4
    add r31, r31, r3
    addi r28, r28, 0x1
L_800E31B0:
    cmplw r28, r30
    opword  0x4180FFDC  // blt .L_800E3190
    mr r3, r31
    lmw r27, 0x9c(r1)
    lwz r0, 0xb4(r1)
    mtlr r0
    addi r1, r1, 0xb0
    blr
}

ASM void fn_800E31D0(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    stw r31, 0x3c(r1)
    li r31, 0x0
    stw r30, 0x38(r1)
    mr r30, r4
    stw r29, 0x34(r1)
    mr r29, r5
    stw r28, 0x30(r1)
    mr r28, r3
    addi r3, r1, 0x8
    bl fn_800CE43C
    lwz r0, 0x14(r30)
    lhz r4, 0x8(r30)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_800E3218
    li r31, 0x10
L_800E3218:
    slwi r0, r4, 2
    addi r3, r1, 0x8
    add r31, r31, r0
    bl fn_800CEBB4
    lwz r30, 0x14(r28)
    add r31, r31, r3
    opword  0x48000024  // b .L_800E3254
L_800E3234:
    cmplwi r0, 0x12
    opword  0x40820018  // bne .L_800E3250
    lhz r4, 0x2(r30)
    mr r5, r29
    addi r3, r1, 0x8
    bl fn_800CEB28
    add r31, r31, r3
L_800E3250:
    addi r30, r30, 0x4
L_800E3254:
    lhz r0, 0x0(r30)
    cmplwi r0, 0x0
    opword  0x4082FFD8  // bne .L_800E3234
    lwz r0, 0x44(r1)
    mr r3, r31
    lwz r31, 0x3c(r1)
    lwz r30, 0x38(r1)
    lwz r29, 0x34(r1)
    lwz r28, 0x30(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_800E3284(void)
{
    nofralloc
    lwz r0, 0x10(r4)
    li r3, 0x0
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_800E3298
    li r3, 0x10
L_800E3298:
    addi r3, r3, 0xc
    blr
}

ASM void fn_800E32A0(void)
{
    nofralloc
    stwu r1, -0xa0(r1)
    mflr r0
    stw r0, 0xa4(r1)
    addi r3, r1, 0x8
    stw r31, 0x9c(r1)
    li r31, 0x0
    stw r30, 0x98(r1)
    lhz r30, 0x8(r4)
    stw r29, 0x94(r1)
    mr r29, r4
    stw r28, 0x90(r1)
    mr r28, r5
    bl fn_800C8F54
    lwz r0, 0x14(r29)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_800E32E4
    li r31, 0x10
L_800E32E4:
    slwi r0, r30, 2
    li r29, 0x0
    add r31, r31, r0
    opword  0x48000020  // b .L_800E3310
L_800E32F4:
    mr r7, r28
    addi r3, r1, 0x8
    li r4, 0x0
    li r5, 0x0
    bl fn_800CAAB4
    add r31, r31, r3
    addi r29, r29, 0x1
L_800E3310:
    clrlwi r6, r29, 16
    cmplw r6, r30
    opword  0x4180FFDC  // blt .L_800E32F4
    lwz r0, 0xa4(r1)
    mr r3, r31
    lwz r31, 0x9c(r1)
    lwz r30, 0x98(r1)
    lwz r29, 0x94(r1)
    lwz r28, 0x90(r1)
    mtlr r0
    addi r1, r1, 0xa0
    blr
}

ASM void fn_800E3340(void)
{
    nofralloc
    lwz r0, 0x10(r4)
    li r3, 0x0
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_800E3354
    li r3, 0x10
L_800E3354:
    addi r3, r3, 0xc
    blr
}

ASM void fn_800E335C(void)
{
    nofralloc
    stwu r1, -0xa0(r1)
    mflr r0
    stw r0, 0xa4(r1)
    addi r3, r1, 0x8
    stw r31, 0x9c(r1)
    li r31, 0x0
    stw r30, 0x98(r1)
    lhz r30, 0x8(r4)
    stw r29, 0x94(r1)
    mr r29, r4
    stw r28, 0x90(r1)
    mr r28, r5
    bl fn_800C8F54
    lwz r0, 0x14(r29)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_800E33A0
    li r31, 0x10
L_800E33A0:
    slwi r0, r30, 2
    li r29, 0x0
    add r31, r31, r0
    opword  0x48000020  // b .L_800E33CC
L_800E33B0:
    mr r7, r28
    addi r3, r1, 0x8
    li r4, 0x0
    li r5, 0x2
    bl fn_800CAAB4
    add r31, r31, r3
    addi r29, r29, 0x1
L_800E33CC:
    clrlwi r6, r29, 16
    cmplw r6, r30
    opword  0x4180FFDC  // blt .L_800E33B0
    lwz r0, 0xa4(r1)
    mr r3, r31
    lwz r31, 0x9c(r1)
    lwz r30, 0x98(r1)
    lwz r29, 0x94(r1)
    lwz r28, 0x90(r1)
    mtlr r0
    addi r1, r1, 0xa0
    blr
}

ASM void fn_800E33FC(void)
{
    nofralloc
    stwu r1, -0xb0(r1)
    mflr r0
    stw r0, 0xb4(r1)
    stmw r27, 0x9c(r1)
    mr r27, r3
    mr r29, r4
    mr r28, r5
    addi r3, r1, 0x8
    li r31, 0x0
    bl fn_800C919C
    lbz r0, 0x18(r27)
    cmplwi r0, 0x0
    opword  0x40820054  // bne .L_800E3480
    lwz r0, 0x20(r29)
    lhz r30, 0x8(r29)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_800E3444
    li r31, 0x10
L_800E3444:
    slwi r0, r30, 2
    li r29, 0x0
    add r31, r31, r0
    opword  0x48000020  // b .L_800E3470
L_800E3454:
    mr r7, r28
    addi r3, r1, 0x8
    li r4, 0x0
    li r5, 0x1
    bl fn_800CAAB4
    add r31, r31, r3
    addi r29, r29, 0x1
L_800E3470:
    clrlwi r6, r29, 16
    cmplw r6, r30
    opword  0x4180FFDC  // blt .L_800E3454
    opword  0x48000038  // b .L_800E34B4
L_800E3480:
    lhz r29, 0x8(r29)
    li r30, 0x0
    opword  0x48000020  // b .L_800E34A8
L_800E348C:
    mr r4, r27
    mr r7, r28
    addi r3, r1, 0x8
    li r5, 0x1
    bl fn_800CAAB4
    add r31, r31, r3
    addi r30, r30, 0x1
L_800E34A8:
    clrlwi r6, r30, 16
    cmplw r6, r29
    opword  0x4180FFDC  // blt .L_800E348C
L_800E34B4:
    mr r3, r31
    lmw r27, 0x9c(r1)
    lwz r0, 0xb4(r1)
    mtlr r0
    addi r1, r1, 0xb0
    blr
}

ASM void fn_800E34CC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, lbl_8049BDE4@ha
    stw r0, 0x14(r1)
    li r0, 0x0
    stw r31, 0xc(r1)
    mr r31, r3
    addi r3, r4, lbl_8049BDE4@l
    stw r3, 0x0(r31)
    addi r3, r31, 0x34
    stw r0, 0x4(r31)
    stw r0, 0x8(r31)
    stw r0, 0xc(r31)
    stw r0, 0x10(r31)
    stw r0, 0x14(r31)
    stw r0, 0x18(r31)
    sth r0, 0x1c(r31)
    sth r0, 0x1e(r31)
    stw r0, 0x20(r31)
    stw r0, 0x24(r31)
    stw r0, 0x28(r31)
    stw r0, 0x2c(r31)
    stw r0, 0x30(r31)
    bl fn_800BB798
    li r0, 0x0
    mr r3, r31
    stw r0, 0x40(r31)
    stw r0, 0x44(r31)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E3550(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stmw r23, 0xc(r1)
    mr r24, r4
    mr r23, r3
    mr r25, r5
    mr r26, r6
    mr r27, r7
    mr r31, r24
L_800E3578:
    lwz r4, 0x0(r25)
    li r30, 0x0
    li r29, 0x0
    li r28, 0x0
    lhz r0, 0x0(r4)
    cmplwi r0, 0x12
    opword  0x418100A0  // bgt .L_800E3630
    lis r3, jumptable_8049BD98@ha
    slwi r0, r0, 2
    addi r3, r3, jumptable_8049BD98@l
    lwzx r0, r3, r0
    mtctr r0
    bctr
    addi r0, r4, 0x4
    mr r3, r23
    stw r0, 0x0(r25)
    mr r4, r31
    mr r5, r25
    mr r6, r26
    mr r7, r27
    bl fn_800E3550
    opword  0x48000064  // b .L_800E3630
    addi r0, r4, 0x4
    stw r0, 0x0(r25)
    opword  0x480000C0  // b .L_800E3698
    opword  0x480000BC  // b .L_800E3698
    lwz r3, 0x18(r23)
    addi r0, r4, 0x4
    stw r0, 0x0(r25)
    lhz r0, 0x2(r4)
    slwi r0, r0, 2
    lwzx r30, r3, r0
    opword  0x48000038  // b .L_800E3630
    addi r0, r4, 0x4
    stw r0, 0x0(r25)
    lhz r0, 0x2(r4)
    lwz r3, 0x8(r26)
    clrlslwi r0, r0, 16, 2
    lwzx r29, r3, r0
    opword  0x4800001C  // b .L_800E3630
    addi r0, r4, 0x4
    stw r0, 0x0(r25)
    lhz r0, 0x2(r4)
    lwz r3, 0x8(r27)
    clrlslwi r0, r0, 16, 2
    lwzx r28, r3, r0
L_800E3630:
    cmplwi r30, 0x0
    opword  0x41820028  // beq .L_800E365C
    cmplwi r24, 0x0
    mr r31, r30
    opword  0x4082000C  // bne .L_800E364C
    stw r30, 0x10(r23)
    opword  0x4BFFFF30  // b .L_800E3578
L_800E364C:
    mr r3, r24
    mr r4, r30
    bl fn_800C8AE0
    opword  0x4BFFFF20  // b .L_800E3578
L_800E365C:
    cmplwi r29, 0x0
    opword  0x41820020  // beq .L_800E3680
    lwz r0, 0x58(r24)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_800E3674
    stw r0, 0x4(r29)
L_800E3674:
    stw r29, 0x58(r24)
    stw r24, 0xc(r29)
    opword  0x4BFFFEFC  // b .L_800E3578
L_800E3680:
    cmplwi r28, 0x0
    opword  0x4182FEF4  // beq .L_800E3578
    lwz r3, 0x58(r24)
    stw r28, 0x8(r3)
    stw r3, 0x4(r28)
    opword  0x4BFFFEE4  // b .L_800E3578
L_800E3698:
    lmw r23, 0xc(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800E36AC(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    li r9, 0x0
    stmw r25, 0x14(r1)
    lhz r4, 0x36(r3)
    lhz r0, 0x1e(r3)
    cmplwi r4, 0x0
    lwz r7, 0x24(r3)
    lwz r6, 0x28(r3)
    lwz r5, 0x30(r3)
    opword  0x408100D0  // ble .L_800E37A0
    cmplwi r4, 0x8
    subi r8, r4, 0x8
    opword  0x408100B8  // ble .L_800E3794
    clrlwi r10, r8, 16
    opword  0x4800008C  // b .L_800E3770
L_800E36E8:
    lwz r8, 0x3c(r3)
    clrlslwi r25, r9, 16, 1
    addi r27, r25, 0x2
    addi r9, r9, 0x8
    lhzx r11, r8, r25
    add r8, r5, r25
    addi r28, r25, 0x4
    addi r29, r25, 0x6
    sth r11, 0x0(r8)
    addi r30, r25, 0x8
    addi r31, r25, 0xa
    addi r12, r25, 0xc
    lwz r26, 0x3c(r3)
    addi r11, r25, 0xe
    lhzx r27, r26, r27
    sth r27, 0x2(r8)
    lwz r27, 0x3c(r3)
    lhzx r28, r27, r28
    sth r28, 0x4(r8)
    lwz r28, 0x3c(r3)
    lhzx r29, r28, r29
    sth r29, 0x6(r8)
    lwz r29, 0x3c(r3)
    lhzx r30, r29, r30
    sth r30, 0x8(r8)
    lwz r30, 0x3c(r3)
    lhzx r31, r30, r31
    sth r31, 0xa(r8)
    lwz r31, 0x3c(r3)
    lhzx r12, r31, r12
    sth r12, 0xc(r8)
    lwz r12, 0x3c(r3)
    lhzx r11, r12, r11
    sth r11, 0xe(r8)
L_800E3770:
    clrlwi r8, r9, 16
    cmplw r8, r10
    opword  0x4180FF70  // blt .L_800E36E8
    opword  0x48000018  // b .L_800E3794
L_800E3780:
    lwz r8, 0x3c(r3)
    clrlslwi r10, r9, 16, 1
    addi r9, r9, 0x1
    lhzx r8, r8, r10
    sthx r8, r5, r10
L_800E3794:
    clrlwi r8, r9, 16
    cmplw r8, r4
    opword  0x4180FFE4  // blt .L_800E3780
L_800E37A0:
    li r11, 0x0
    opword  0x48000068  // b .L_800E380C
L_800E37A8:
    lwz r8, 0x20(r3)
    clrlwi r4, r11, 16
    mr r9, r6
    mr r10, r7
    lbzx r4, r8, r4
    li r8, 0x0
    opword  0xC0228D40  // lfs f1, lbl_8053BCE0@sda21(r0)
    mtctr r4
    cmpwi r4, 0x0
    opword  0x4081002C  // ble .L_800E37F8
L_800E37D0:
    lfs fp0, 0x0(r9)
    fcmpo cr0, fp1, fp0
    opword  0x4080000C  // bge .L_800E37E4
    fmr fp1, fp0
    lhz r8, 0x0(r10)
L_800E37E4:
    addi r9, r9, 0x4
    addi r10, r10, 0x2
    addi r6, r6, 0x4
    addi r7, r7, 0x2
    opword  0x4200FFDC  // bdnz .L_800E37D0
L_800E37F8:
    lhz r4, 0x36(r3)
    add r4, r11, r4
    addi r11, r11, 0x1
    slwi r4, r4, 1
    sthx r8, r5, r4
L_800E380C:
    cmpw r11, r0
    opword  0x4180FF98  // blt .L_800E37A8
    lmw r25, 0x14(r1)
    addi r1, r1, 0x30
    blr
}

ASM void fn_800E3820(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    mr r4, r5
    mr r5, r6
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r3, 0x14(r3)
    lwz r12, 0x0(r3)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    mr r3, r31
    bl fn_800E3890
    lwz r3, 0x10(r30)
    cmplwi r3, 0x0
    opword  0x41820010  // beq .L_800E3878
    lwz r0, 0x14(r30)
    opword  0x900D8E30  // stw r0, lbl_8053A9F0@sda21(r0)
    bl fn_800C8DAC
L_800E3878:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E3890(void)
{
    nofralloc
    opword  0x906D8E28  // stw r3, lbl_8053A9E8@sda21(r0)
    blr
}

ASM void fn_800E3898(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r5, r4
    stw r0, 0x14(r1)
    lwz r0, 0x8(r4)
    rlwinm. r0, r0, 0, 29, 29
    opword  0x41820014  // beq .L_800E38C4
    lwz r0, 0x14(r3)
    ori r0, r0, 0x2
    stw r0, 0x14(r3)
    opword  0x48000010  // b .L_800E38D0
L_800E38C4:
    lwz r0, 0x14(r3)
    rlwinm r0, r0, 0, 31, 29
    stw r0, 0x14(r3)
L_800E38D0:
    lwz r0, 0x8(r5)
    rlwinm. r0, r0, 0, 28, 28
    opword  0x41820014  // beq .L_800E38EC
    lwz r0, 0x14(r3)
    ori r0, r0, 0x1
    stw r0, 0x14(r3)
    opword  0x48000010  // b .L_800E38F8
L_800E38EC:
    lwz r0, 0x14(r3)
    clrrwi r0, r0, 1
    stw r0, 0x14(r3)
L_800E38F8:
    lwz r12, 0x0(r3)
    addi r4, r5, 0x88
    lwz r5, 0x84(r5)
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E3920(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    addi r4, r4, 0x88
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E3950(void)
{
    nofralloc
    lis r6, lbl_8049BDF8@ha
    addi r0, r6, lbl_8049BDF8@l
    stw r0, 0x0(r3)
    stw r4, 0x8(r3)
    stw r5, 0x4(r3)
    blr
}

ASM void fn_800E3968(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r4, r3
    lwz r3, 0x8(r3)
    stw r0, 0x14(r1)
    lwz r4, 0x4(r4)
    bl fn_8005FC54
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E3994(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_800E39C4
    lis r5, lbl_8049BDF8@ha
    extsh. r0, r4
    addi r0, r5, lbl_8049BDF8@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_800E39C4
    bl dtor_80084580
L_800E39C4:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E39DC(void)
{
    nofralloc
    li r4, 0x0
    li r0, 0x1
    stw r4, 0x0(r3)
    stw r4, 0x4(r3)
    stw r4, 0x8(r3)
    stw r4, 0xc(r3)
    stw r4, 0x10(r3)
    stw r4, 0x14(r3)
    stw r4, 0x18(r3)
    stw r4, 0x1c(r3)
    stw r4, 0x20(r3)
    stw r4, 0x24(r3)
    stw r4, 0x28(r3)
    stw r0, 0x2c(r3)
    stw r4, 0x30(r3)
    stw r4, 0x34(r3)
    blr
}

ASM void fn_800E3A20(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r5
    stw r29, 0x14(r1)
    mr r29, r4
    addi r0, r29, 0x10
    stw r28, 0x10(r1)
    mr r28, r3
    stw r30, 0x2c(r3)
    stw r0, 0x0(r3)
    bl fn_800E3B3C
    cmpwi r3, 0x0
    opword  0x41820008  // beq .L_800E3A64
    opword  0x480000BC  // b .L_800E3B1C
L_800E3A64:
    mr r3, r28
    mr r4, r29
    bl fn_800E3BA0
    mr. r31, r3
    opword  0x41820008  // beq .L_800E3A7C
    opword  0x480000A4  // b .L_800E3B1C
L_800E3A7C:
    lwz r3, 0x8(r29)
    extrwi. r0, r3, 1, 23
    opword  0x41820010  // beq .L_800E3A94
    mr r3, r28
    bl fn_800E3BFC
    opword  0x48000044  // b .L_800E3AD4
L_800E3A94:
    rlwinm r0, r3, 0, 27, 27
    cmpwi r0, 0x10
    opword  0x41820014  // beq .L_800E3AB0
    opword  0x40800020  // bge .L_800E3AC0
    cmpwi r0, 0x0
    opword  0x41820018  // beq .L_800E3AC0
    opword  0x48000014  // b .L_800E3AC0
L_800E3AB0:
    mr r3, r28
    bl fn_800E3BFC
    mr r31, r3
    opword  0x48000018  // b .L_800E3AD4
L_800E3AC0:
    mr r3, r28
    mr r4, r29
    mr r5, r30
    bl fn_800E3C28
    mr r31, r3
L_800E3AD4:
    cmpwi r31, 0x0
    opword  0x4182000C  // beq .L_800E3AE4
    mr r3, r31
    opword  0x4800003C  // b .L_800E3B1C
L_800E3AE4:
    lwz r0, 0x8(r29)
    rlwinm. r0, r0, 0, 27, 27
    opword  0x41820010  // beq .L_800E3AFC
    li r0, 0x0
    sth r0, 0xc(r29)
    opword  0x48000020  // b .L_800E3B18
L_800E3AFC:
    mr r3, r28
    mr r4, r29
    mr r5, r30
    bl fn_800E3D08
    mr. r31, r3
    opword  0x41820008  // beq .L_800E3B18
    opword  0x48000008  // b .L_800E3B1C
L_800E3B18:
    mr r3, r31
L_800E3B1C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800E3B3C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    lhz r3, 0x2c(r4)
    cmplwi r3, 0x0
    opword  0x41820024  // beq .L_800E3B84
    bl fn_80084478
    stw r3, 0x4(r30)
    lhz r0, 0x2c(r31)
    mulli r3, r0, 0x30
    bl fn_80084478
    stw r3, 0xc(r30)
    lwz r0, 0xc(r30)
    stw r0, 0x34(r30)
L_800E3B84:
    lwz r0, 0x14(r1)
    li r3, 0x0
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E3BA0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    lhz r3, 0x2e(r4)
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_800E3BE0
    bl fn_80084478
    stw r3, 0x8(r30)
    lhz r0, 0x2e(r31)
    mulli r3, r0, 0x30
    bl fn_80084478
    stw r3, 0x10(r30)
L_800E3BE0:
    lwz r0, 0x14(r1)
    li r3, 0x0
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E3BFC(void)
{
    nofralloc
    opword  0x38AD8260  // li r5, lbl_80539E20@sda21
    opword  0x388D8264  // li r4, lbl_80539E24@sda21
    stw r5, 0x18(r3)
    li r0, 0x0
    stw r5, 0x14(r3)
    stw r4, 0x20(r3)
    stw r4, 0x1c(r3)
    stw r0, 0x28(r3)
    stw r0, 0x24(r3)
    li r3, 0x0
    blr
}

ASM void fn_800E3C28(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stmw r25, 0x14(r1)
    mr. r27, r5
    mr r25, r3
    mr r26, r4
    opword  0x41820040  // beq .L_800E3C84
    mr r30, r25
    slwi r29, r27, 2
    li r28, 0x0
    li r31, 0x0
L_800E3C58:
    mr r3, r29
    bl fn_80084478
    stw r3, 0x14(r30)
    mr r3, r29
    bl fn_80084478
    stw r3, 0x1c(r30)
    addi r28, r28, 0x1
    cmpwi r28, 0x2
    stw r31, 0x24(r30)
    addi r30, r30, 0x4
    opword  0x4180FFD8  // blt .L_800E3C58
L_800E3C84:
    li r28, 0x0
    mr r30, r25
L_800E3C8C:
    li r31, 0x0
    li r29, 0x0
    opword  0x48000044  // b .L_800E3CD8
L_800E3C98:
    lhz r0, 0x44(r26)
    cmplwi r0, 0x0
    opword  0x41820030  // beq .L_800E3CD0
    mulli r3, r0, 0x30
    li r4, 0x20
    bl fn_800844C4
    lwz r5, 0x14(r30)
    li r4, 0x20
    stwx r3, r5, r29
    lhz r0, 0x44(r26)
    mulli r3, r0, 0x24
    bl fn_800844C4
    lwz r4, 0x1c(r30)
    stwx r3, r4, r29
L_800E3CD0:
    addi r29, r29, 0x4
    addi r31, r31, 0x1
L_800E3CD8:
    cmplw r31, r27
    opword  0x4180FFBC  // blt .L_800E3C98
    addi r28, r28, 0x1
    addi r30, r30, 0x4
    cmpwi r28, 0x2
    opword  0x4180FFA0  // blt .L_800E3C8C
    lmw r25, 0x14(r1)
    li r3, 0x0
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800E3D08(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    stmw r20, 0x10(r1)
    mr r26, r4
    mr r25, r3
    mr r27, r5
    lwz r0, 0x1c(r4)
    cmplwi r0, 0x0
    opword  0x408201D8  // bne .L_800E3F04
    lhz r28, 0x5c(r26)
    li r20, 0x0
    li r31, 0x0
    li r21, 0x0
    opword  0x48000044  // b .L_800E3D84
L_800E3D44:
    lwz r3, 0x60(r26)
    clrlslwi r0, r21, 16, 2
    lwzx r29, r3, r0
    lwz r3, 0x28(r29)
    lwz r12, 0x0(r3)
    lwz r12, 0x5c(r12)
    mtctr r12
    bctrl
    lbz r0, 0x0(r3)
    cmplwi r0, 0x1
    opword  0x40820014  // bne .L_800E3D80
    lwz r3, 0x8(r29)
    bl fn_800BCE64
    add r20, r20, r3
    addi r31, r31, 0x1
L_800E3D80:
    addi r21, r21, 0x1
L_800E3D84:
    clrlwi r0, r21, 16
    cmplw r0, r28
    opword  0x4180FFB8  // blt .L_800E3D44
    clrlwi. r0, r20, 16
    opword  0x41820034  // beq .L_800E3DC8
    cmplwi r27, 0x0
    opword  0x4182002C  // beq .L_800E3DC8
    mr r23, r25
    clrlslwi r24, r31, 16, 2
    li r20, 0x0
L_800E3DAC:
    mr r3, r24
    bl fn_80084478
    addi r20, r20, 0x1
    stw r3, 0x24(r23)
    cmpwi r20, 0x2
    addi r23, r23, 0x4
    opword  0x4180FFE8  // blt .L_800E3DAC
L_800E3DC8:
    slwi r20, r27, 2
    mr r21, r25
    li r30, 0x0
L_800E3DD4:
    lhz r24, 0x5c(r26)
    li r29, 0x0
    li r28, 0x0
    li r22, 0x0
    opword  0x48000054  // b .L_800E3E38
L_800E3DE8:
    lwz r3, 0x60(r26)
    clrlslwi r0, r28, 16, 2
    lwzx r23, r3, r0
    lwz r3, 0x28(r23)
    lwz r12, 0x0(r3)
    lwz r12, 0x5c(r12)
    mtctr r12
    bctrl
    lbz r0, 0x0(r3)
    cmplwi r0, 0x1
    opword  0x40820024  // bne .L_800E3E34
    mr r3, r20
    bl fn_80084478
    lwz r4, 0x24(r21)
    stwx r3, r4, r22
    addi r22, r22, 0x4
    lwz r3, 0x8(r23)
    stw r29, 0x64(r3)
    addi r29, r29, 0x1
L_800E3E34:
    addi r28, r28, 0x1
L_800E3E38:
    clrlwi r0, r28, 16
    cmplw r0, r24
    opword  0x4180FFA8  // blt .L_800E3DE8
    addi r30, r30, 0x1
    addi r21, r21, 0x4
    cmpwi r30, 0x2
    opword  0x4180FF84  // blt .L_800E3DD4
    li r24, 0x0
    mr r22, r25
L_800E3E5C:
    lhz r23, 0x5c(r26)
    li r25, 0x0
    li r21, 0x0
    opword  0x48000070  // b .L_800E3ED8
L_800E3E6C:
    lwz r3, 0x60(r26)
    clrlslwi r0, r25, 16, 2
    lwzx r3, r3, r0
    lwz r3, 0x28(r3)
    lwz r12, 0x0(r3)
    lwz r12, 0x5c(r12)
    mtctr r12
    bctrl
    lbz r0, 0x0(r3)
    cmplwi r0, 0x1
    opword  0x40820040  // bne .L_800E3ED4
    li r28, 0x0
    li r20, 0x0
    opword  0x48000028  // b .L_800E3EC8
L_800E3EA4:
    lhz r0, 0x44(r26)
    li r4, 0x20
    mulli r3, r0, 0x24
    bl fn_800844C4
    lwz r0, 0x24(r22)
    addi r28, r28, 0x1
    lwzx r4, r21, r0
    stwx r3, r4, r20
    addi r20, r20, 0x4
L_800E3EC8:
    cmplw r28, r27
    opword  0x4180FFD8  // blt .L_800E3EA4
    addi r21, r21, 0x4
L_800E3ED4:
    addi r25, r25, 0x1
L_800E3ED8:
    clrlwi r0, r25, 16
    cmplw r0, r23
    opword  0x4180FF8C  // blt .L_800E3E6C
    addi r24, r24, 0x1
    addi r22, r22, 0x4
    cmpwi r24, 0x2
    opword  0x4180FF6C  // blt .L_800E3E5C
    clrlwi. r0, r31, 16
    opword  0x4182000C  // beq .L_800E3F04
    li r0, 0x1
    sth r0, 0xc(r26)
L_800E3F04:
    lmw r20, 0x10(r1)
    li r3, 0x0
    lwz r0, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_800E3F1C(void)
{
    nofralloc
    stwu r1, -0xa0(r1)
    stfd fp31, 0x90(r1)
    psq_st fp31, 0x98(r1), 0, 0
    stfd fp30, 0x80(r1)
    psq_st fp30, 0x88(r1), 0, 0
    stfd fp29, 0x70(r1)
    psq_st fp29, 0x78(r1), 0, 0
    stfd fp28, 0x60(r1)
    psq_st fp28, 0x68(r1), 0, 0
    stfd fp27, 0x50(r1)
    psq_st fp27, 0x58(r1), 0, 0
    stfd fp26, 0x40(r1)
    psq_st fp26, 0x48(r1), 0, 0
    stfd fp25, 0x30(r1)
    psq_st fp25, 0x38(r1), 0, 0
    stfd fp24, 0x20(r1)
    psq_st fp24, 0x28(r1), 0, 0
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    opword  0x388D8268  // li r4, lbl_80539E28@sda21
    lwz r6, 0x0(r3)
    psq_l fp24, 0x0(r4), 0, 0
    li r31, -0x1
    lwz r5, 0x24(r6)
    li r8, -0x30
    lwz r4, 0x28(r6)
    ps_merge00 fp11, fp24, fp24
    ps_merge00 fp13, fp24, fp24
    lhz r7, 0x1e(r6)
    ps_merge00 fp30, fp24, fp24
    subi r30, r5, 0x2
    subi r29, r4, 0x4
    opword  0x48000138  // b .L_800E40D8
L_800E3FA4:
    lwz r6, 0x8(r3)
    li r4, 0x1
    ps_merge00 fp10, fp24, fp24
    clrlwi r0, r31, 16
    stbx r4, r6, r31
    ps_merge00 fp12, fp24, fp24
    ps_merge00 fp31, fp24, fp24
    li r11, 0x0
    lwz r4, 0x0(r3)
    lwz r5, 0x10(r3)
    lwz r4, 0x20(r4)
    add r9, r5, r8
    lbzx r12, r4, r0
L_800E3FD8:
    lhzu r10, 0x2(r30)
    addi r11, r11, 0x1
    lwz r5, 0x0(r3)
    cmpw r11, r12
    mulli r4, r10, 0x30
    lwz r0, 0xc(r3)
    lwz r5, 0x2c(r5)
    lfsu fp0, 0x4(r29)
    add r5, r5, r4
    add r4, r0, r4
    psq_l fp2, 0x0(r5), 0, 0
    psq_l fp1, 0x0(r4), 0, 0
    psq_l fp3, 0x10(r4), 0, 0
    ps_muls0 fp29, fp2, fp1
    psq_l fp8, 0x10(r5), 0, 0
    ps_muls0 fp27, fp2, fp3
    psq_l fp5, 0x20(r4), 0, 0
    psq_l fp7, 0x8(r5), 0, 0
    ps_muls0 fp25, fp2, fp5
    ps_madds1 fp29, fp8, fp1, fp29
    psq_l fp9, 0x20(r5), 0, 0
    psq_l fp2, 0x8(r4), 0, 0
    ps_madds1 fp27, fp8, fp3, fp27
    psq_l fp4, 0x18(r4), 0, 0
    ps_madds0 fp29, fp9, fp2, fp29
    ps_madds1 fp25, fp8, fp5, fp25
    psq_l fp6, 0x28(r4), 0, 0
    ps_madds0 fp27, fp9, fp4, fp27
    psq_l fp8, 0x18(r5), 0, 0
    ps_muls0 fp28, fp7, fp1
    ps_muls0 fp26, fp7, fp3
    ps_madds0 fp25, fp9, fp6, fp25
    psq_l fp9, 0x28(r5), 0, 0
    ps_madds0 fp10, fp29, fp0, fp10
    ps_muls0 fp7, fp7, fp5
    ps_madds1 fp28, fp8, fp1, fp28
    ps_madds1 fp26, fp8, fp3, fp26
    psq_st fp10, 0x0(r9), 0, 0
    ps_madds0 fp12, fp27, fp0, fp12
    ps_madds1 fp7, fp8, fp5, fp7
    ps_madds0 fp28, fp9, fp2, fp28
    ps_madds0 fp26, fp9, fp4, fp26
    psq_st fp12, 0x10(r9), 0, 0
    ps_madds0 fp31, fp25, fp0, fp31
    ps_madds0 fp7, fp9, fp6, fp7
    ps_madd fp28, fp24, fp2, fp28
    psq_st fp31, 0x20(r9), 0, 0
    ps_madd fp26, fp24, fp4, fp26
    ps_madd fp7, fp24, fp6, fp7
    lwz r4, 0x4(r3)
    ps_madds0 fp11, fp28, fp0, fp11
    lbzx r5, r6, r31
    ps_madds0 fp13, fp26, fp0, fp13
    lbzx r0, r4, r10
    ps_madds0 fp30, fp7, fp0, fp30
    and r0, r5, r0
    stbx r0, r6, r31
    opword  0x4180FF1C  // blt .L_800E3FD8
    psq_st fp11, 0x8(r9), 0, 0
    ps_merge00 fp11, fp24, fp24
    psq_st fp13, 0x18(r9), 0, 0
    ps_merge00 fp13, fp24, fp24
    psq_st fp30, 0x28(r9), 0, 0
    ps_merge00 fp30, fp24, fp24
L_800E40D8:
    addi r31, r31, 0x1
    addi r8, r8, 0x30
    cmpw r31, r7
    opword  0x4180FEC0  // blt .L_800E3FA4
    psq_l fp31, 0x98(r1), 0, 0
    lfd fp31, 0x90(r1)
    psq_l fp30, 0x88(r1), 0, 0
    lfd fp30, 0x80(r1)
    psq_l fp29, 0x78(r1), 0, 0
    lfd fp29, 0x70(r1)
    psq_l fp28, 0x68(r1), 0, 0
    lfd fp28, 0x60(r1)
    psq_l fp27, 0x58(r1), 0, 0
    lfd fp27, 0x50(r1)
    psq_l fp26, 0x48(r1), 0, 0
    lfd fp26, 0x40(r1)
    psq_l fp25, 0x38(r1), 0, 0
    lfd fp25, 0x30(r1)
    psq_l fp24, 0x28(r1), 0, 0
    lfd fp24, 0x20(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0xa0
    blr
}

ASM void fn_800E413C(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    cmpwi r4, 0x1
    stw r0, 0x54(r1)
    stw r31, 0x4c(r1)
    stw r30, 0x48(r1)
    stw r29, 0x44(r1)
    stw r28, 0x40(r1)
    mr r28, r3
    opword  0x418200C8  // beq .L_800E4228
    opword  0x40800010  // bge .L_800E4174
    cmpwi r4, 0x0
    opword  0x40800014  // bge .L_800E4180
    opword  0x48000224  // b .L_800E4394
L_800E4174:
    cmpwi r4, 0x3
    opword  0x4080021C  // bge .L_800E4394
    opword  0x48000164  // b .L_800E42E0
L_800E4180:
    lwz r3, 0x0(r28)
    lis r4, lbl_80536C50@ha
    addi r0, r4, lbl_80536C50@l
    li r29, 0x0
    lhz r31, 0x36(r3)
    mr r30, r0
    opword  0x48000048  // b .L_800E41E0
L_800E419C:
    lwz r4, 0x0(r28)
    clrlwi r0, r29, 16
    lwz r3, 0x30(r28)
    clrlslwi r6, r29, 16, 1
    lwz r7, 0x3c(r4)
    mulli r0, r0, 0x30
    lwz r5, 0x18(r28)
    slwi r4, r3, 2
    lhzx r6, r7, r6
    mr r3, r30
    lwzx r4, r5, r4
    mulli r6, r6, 0x30
    lwz r7, 0xc(r28)
    add r5, r4, r0
    add r4, r7, r6
    bl PSMTXConcat
    addi r29, r29, 0x1
L_800E41E0:
    clrlwi r0, r29, 16
    cmplw r0, r31
    opword  0x4180FFB4  // blt .L_800E419C
    lwz r7, 0x0(r28)
    lhz r0, 0x34(r7)
    cmplw r0, r31
    opword  0x4081019C  // ble .L_800E4394
    lwz r4, 0x30(r28)
    mulli r0, r31, 0x30
    lwz r6, 0x18(r28)
    mr r3, r30
    slwi r5, r4, 2
    lwz r4, 0x10(r28)
    lwzx r5, r6, r5
    lhz r6, 0x1e(r7)
    add r5, r5, r0
    bl fn_800BC0C0
    opword  0x48000170  // b .L_800E4394
L_800E4228:
    lwz r3, 0x0(r28)
    li r30, 0x0
    lhz r29, 0x36(r3)
    opword  0x48000044  // b .L_800E4278
L_800E4238:
    lwz r4, 0x0(r28)
    clrlwi r0, r30, 16
    lwz r3, 0x30(r28)
    clrlslwi r5, r30, 16, 1
    lwz r6, 0x3c(r4)
    mulli r0, r0, 0x30
    lwz r4, 0x18(r28)
    slwi r3, r3, 2
    lhzx r5, r6, r5
    lwzx r3, r4, r3
    mulli r5, r5, 0x30
    lwz r6, 0xc(r28)
    add r4, r3, r0
    add r3, r6, r5
    bl PSMTXCopy
    addi r30, r30, 0x1
L_800E4278:
    clrlwi r0, r30, 16
    cmplw r0, r29
    opword  0x4180FFB8  // blt .L_800E4238
    lwz r3, 0x0(r28)
    li r30, 0x0
    lhz r29, 0x36(r3)
    opword  0x48000040  // b .L_800E42D0
L_800E4294:
    lwz r3, 0x0(r28)
    clrlwi r6, r30, 16
    lwz r5, 0x30(r28)
    mulli r0, r6, 0x30
    lhz r4, 0x36(r3)
    lwz r3, 0x10(r28)
    slwi r5, r5, 2
    add r4, r6, r4
    lwz r6, 0x18(r28)
    mulli r4, r4, 0x30
    add r3, r3, r0
    lwzx r0, r6, r5
    add r4, r0, r4
    bl PSMTXCopy
    addi r30, r30, 0x1
L_800E42D0:
    clrlwi r0, r30, 16
    cmplw r0, r29
    opword  0x4180FFBC  // blt .L_800E4294
    opword  0x480000B8  // b .L_800E4394
L_800E42E0:
    lis r3, lbl_80536C50@ha
    mr r4, r5
    mr r5, r6
    addi r6, r1, 0x8
    addi r3, r3, lbl_80536C50@l
    bl fn_800E46C0
    lwz r3, 0x0(r28)
    li r30, 0x0
    lhz r29, 0x36(r3)
    opword  0x48000048  // b .L_800E434C
L_800E4308:
    lwz r4, 0x0(r28)
    clrlwi r0, r30, 16
    lwz r3, 0x30(r28)
    clrlslwi r6, r30, 16, 1
    lwz r7, 0x3c(r4)
    mulli r0, r0, 0x30
    lwz r5, 0x18(r28)
    slwi r4, r3, 2
    lhzx r6, r7, r6
    addi r3, r1, 0x8
    lwzx r4, r5, r4
    mulli r6, r6, 0x30
    lwz r7, 0xc(r28)
    add r5, r4, r0
    add r4, r7, r6
    bl PSMTXConcat
    addi r30, r30, 0x1
L_800E434C:
    clrlwi r0, r30, 16
    cmplw r0, r29
    opword  0x4180FFB4  // blt .L_800E4308
    lwz r7, 0x0(r28)
    lhz r3, 0x36(r7)
    lhz r0, 0x34(r7)
    cmplw r0, r3
    opword  0x4081002C  // ble .L_800E4394
    lwz r4, 0x30(r28)
    mulli r0, r3, 0x30
    lwz r6, 0x18(r28)
    addi r3, r1, 0x8
    slwi r5, r4, 2
    lwz r4, 0x10(r28)
    lwzx r5, r6, r5
    lhz r6, 0x1e(r7)
    add r5, r5, r0
    bl fn_800BC0C0
L_800E4394:
    lwz r0, 0x54(r1)
    lwz r31, 0x4c(r1)
    lwz r30, 0x48(r1)
    lwz r29, 0x44(r1)
    lwz r28, 0x40(r1)
    mtlr r0
    addi r1, r1, 0x50
    blr
}

ASM void fn_800E43B4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    li r30, 0x0
    stw r29, 0x14(r1)
    mr r29, r3
    lwz r3, 0x0(r3)
    lhz r31, 0x34(r3)
    opword  0x4800016C  // b .L_800E4548
L_800E43E0:
    lwz r4, 0x0(r29)
    clrlwi r0, r30, 16
    lwz r3, 0x38(r4)
    lbzx r3, r3, r0
    cmplwi r3, 0x0
    opword  0x408200AC  // bne .L_800E44A0
    lwz r4, 0x3c(r4)
    slwi r3, r0, 1
    lwz r5, 0x4(r29)
    lhzx r3, r4, r3
    lbzx r3, r5, r3
    cmplwi r3, 0x1
    opword  0x40820060  // bne .L_800E4470
    lwz r3, 0x30(r29)
    mulli r4, r0, 0x30
    lwz r5, 0x18(r29)
    slwi r6, r3, 2
    lwz r3, 0x20(r29)
    lwzx r5, r5, r6
    mulli r0, r0, 0x24
    lwzx r3, r3, r6
    add r4, r5, r4
    psq_l fp5, 0x0(r4), 0, 0
    add r3, r3, r0
    lfs fp4, 0x8(r4)
    psq_l fp3, 0x10(r4), 0, 0
    lfs fp2, 0x18(r4)
    psq_l fp1, 0x20(r4), 0, 0
    lfs fp0, 0x28(r4)
    psq_st fp5, 0x0(r3), 0, 0
    stfs fp4, 0x8(r3)
    psq_st fp3, 0xc(r3), 0, 0
    stfs fp2, 0x14(r3)
    psq_st fp1, 0x18(r3), 0, 0
    stfs fp0, 0x20(r3)
    opword  0x480000D8  // b .L_800E4544
L_800E4470:
    lwz r3, 0x30(r29)
    mulli r5, r0, 0x30
    lwz r4, 0x18(r29)
    slwi r7, r3, 2
    lwz r3, 0x20(r29)
    lwzx r6, r4, r7
    mulli r0, r0, 0x24
    lwzx r4, r3, r7
    add r3, r6, r5
    add r4, r4, r0
    bl fn_800BBA14
    opword  0x480000A8  // b .L_800E4544
L_800E44A0:
    lwz r4, 0x3c(r4)
    slwi r3, r0, 1
    lwz r5, 0x8(r29)
    lhzx r3, r4, r3
    lbzx r3, r5, r3
    cmplwi r3, 0x1
    opword  0x40820060  // bne .L_800E4518
    lwz r3, 0x30(r29)
    mulli r4, r0, 0x30
    lwz r5, 0x18(r29)
    slwi r6, r3, 2
    lwz r3, 0x20(r29)
    lwzx r5, r5, r6
    mulli r0, r0, 0x24
    lwzx r3, r3, r6
    add r4, r5, r4
    psq_l fp5, 0x0(r4), 0, 0
    add r3, r3, r0
    lfs fp4, 0x8(r4)
    psq_l fp3, 0x10(r4), 0, 0
    lfs fp2, 0x18(r4)
    psq_l fp1, 0x20(r4), 0, 0
    lfs fp0, 0x28(r4)
    psq_st fp5, 0x0(r3), 0, 0
    stfs fp4, 0x8(r3)
    psq_st fp3, 0xc(r3), 0, 0
    stfs fp2, 0x14(r3)
    psq_st fp1, 0x18(r3), 0, 0
    stfs fp0, 0x20(r3)
    opword  0x48000030  // b .L_800E4544
L_800E4518:
    lwz r3, 0x30(r29)
    mulli r5, r0, 0x30
    lwz r4, 0x18(r29)
    slwi r7, r3, 2
    lwz r3, 0x20(r29)
    lwzx r6, r4, r7
    mulli r0, r0, 0x24
    lwzx r4, r3, r7
    add r3, r6, r5
    add r4, r4, r0
    bl fn_800BBA14
L_800E4544:
    addi r30, r30, 0x1
L_800E4548:
    clrlwi r0, r30, 16
    cmplw r0, r31
    opword  0x4180FE90  // blt .L_800E43E0
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800E4570(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r28, r3
    li r29, 0x0
    lwz r3, 0x0(r3)
    lhz r31, 0x34(r3)
    opword  0x48000110  // b .L_800E46A0
L_800E4594:
    lwz r4, 0x0(r28)
    clrlwi r30, r29, 16
    lwz r3, 0x38(r4)
    lbzx r0, r3, r30
    cmplwi r0, 0x0
    opword  0x408200F4  // bne .L_800E469C
    lwz r3, 0x3c(r4)
    slwi r0, r30, 1
    lwz r4, 0x18(r4)
    lhzx r0, r3, r0
    slwi r0, r0, 2
    lwzx r3, r4, r0
    lbz r0, 0x16(r3)
    extrwi r0, r0, 4, 24
    cmplwi r0, 0x1
    opword  0x40820084  // bne .L_800E4654
    lwz r3, 0x30(r28)
    mulli r0, r30, 0x30
    lwz r4, 0x18(r28)
    slwi r3, r3, 2
    lwzx r3, r4, r3
    add r27, r3, r0
    mr r3, r27
    bl fn_800BB7E8
    opword  0xC0428D48  // lfs f2, lbl_8053BCE8@sda21(r0)
    mulli r0, r30, 0x24
    lfs fp0, 0x0(r27)
    lwz r3, 0x30(r28)
    fdivs fp0, fp2, fp0
    lwz r4, 0x20(r28)
    slwi r3, r3, 2
    opword  0xC0228D4C  // lfs f1, lbl_8053BCEC@sda21(r0)
    lwzx r3, r4, r3
    add r3, r3, r0
    stfs fp0, 0x0(r3)
    stfs fp1, 0x4(r3)
    stfs fp1, 0x8(r3)
    stfs fp1, 0xc(r3)
    lfs fp0, 0x14(r27)
    fdivs fp0, fp2, fp0
    stfs fp0, 0x10(r3)
    stfs fp1, 0x14(r3)
    stfs fp1, 0x18(r3)
    stfs fp1, 0x1c(r3)
    lfs fp0, 0x28(r27)
    fdivs fp0, fp2, fp0
    stfs fp0, 0x20(r3)
    opword  0x4800004C  // b .L_800E469C
L_800E4654:
    cmplwi r0, 0x2
    opword  0x40820044  // bne .L_800E469C
    lwz r3, 0x30(r28)
    mulli r0, r30, 0x30
    lwz r4, 0x18(r28)
    slwi r3, r3, 2
    lwzx r3, r4, r3
    add r27, r3, r0
    mr r3, r27
    bl fn_800BB8D8
    lwz r4, 0x30(r28)
    mulli r0, r30, 0x24
    lwz r5, 0x20(r28)
    mr r3, r27
    slwi r4, r4, 2
    lwzx r4, r5, r4
    add r4, r4, r0
    bl fn_800BBA14
L_800E469C:
    addi r29, r29, 0x1
L_800E46A0:
    clrlwi r0, r29, 16
    cmplw r0, r31
    opword  0x4180FEEC  // blt .L_800E4594
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800E46C0(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    lfs fp2, 0x0(r4)
    lfs fp1, 0x10(r5)
    lfs fp3, 0x0(r5)
    fmuls fp7, fp1, fp2
    lfs fp0, 0x20(r5)
    fmuls fp13, fp3, fp2
    lfs fp1, 0x4(r5)
    fmuls fp3, fp0, fp2
    lfs fp12, 0x4(r4)
    lfs fp10, 0x8(r4)
    fmuls fp11, fp1, fp12
    stw r0, 0x44(r1)
    addi r4, r1, 0x8
    lfs fp2, 0x8(r5)
    lfs fp1, 0x14(r5)
    fmuls fp9, fp2, fp10
    lfs fp5, 0x18(r5)
    fmuls fp6, fp1, fp12
    lfs fp2, 0x24(r5)
    lfs fp1, 0x28(r5)
    fmuls fp5, fp5, fp10
    fmuls fp2, fp2, fp12
    lfs fp8, 0xc(r5)
    fmuls fp1, fp1, fp10
    lfs fp4, 0x1c(r5)
    lfs fp0, 0x2c(r5)
    mr r5, r6
    stfs fp13, 0x8(r1)
    stfs fp11, 0xc(r1)
    stfs fp9, 0x10(r1)
    stfs fp8, 0x14(r1)
    stfs fp7, 0x18(r1)
    stfs fp6, 0x1c(r1)
    stfs fp5, 0x20(r1)
    stfs fp4, 0x24(r1)
    stfs fp3, 0x28(r1)
    stfs fp2, 0x2c(r1)
    stfs fp1, 0x30(r1)
    stfs fp0, 0x34(r1)
    bl PSMTXConcat
    lwz r0, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_800E4778(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r27, r3
    mr r28, r4
    mr r29, r5
    li r30, 0x0
    lhz r31, 0x4(r3)
    opword  0x48000020  // b .L_800E47BC
L_800E47A0:
    lwz r3, 0x8(r27)
    clrlslwi r0, r30, 16, 2
    lwzx r3, r3, r0
    stw r28, 0x50(r3)
    stw r29, 0x4c(r3)
    bl fn_800BD2CC
    addi r30, r30, 0x1
L_800E47BC:
    clrlwi r0, r30, 16
    cmplw r0, r31
    opword  0x4180FFDC  // blt .L_800E47A0
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800E47DC(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stmw r25, 0x14(r1)
    mr r25, r3
    li r27, 0x0
    lhz r28, 0x4(r3)
    opword  0x48000058  // b .L_800E4850
L_800E47FC:
    clrlwi r31, r27, 16
    clrlslwi r30, r27, 16, 2
    li r26, 0x0
    opword  0x48000038  // b .L_800E4840
L_800E480C:
    lwz r4, 0x8(r25)
    clrlslwi r29, r26, 16, 2
    lwzx r3, r30, r4
    lwzx r4, r4, r29
    bl fn_800BCEE4
    clrlwi. r0, r3, 24
    opword  0x41820018  // beq .L_800E483C
    lwz r3, 0x8(r25)
    lwzx r4, r3, r29
    lwzx r3, r30, r3
    lwz r0, 0x2c(r4)
    stw r0, 0x2c(r3)
L_800E483C:
    addi r26, r26, 0x1
L_800E4840:
    clrlwi r0, r26, 16
    cmplw r0, r31
    opword  0x4180FFC4  // blt .L_800E480C
    addi r27, r27, 0x1
L_800E4850:
    clrlwi r0, r27, 16
    cmplw r0, r28
    opword  0x4180FFA4  // blt .L_800E47FC
    lmw r25, 0x14(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800E4870(void)
{
    nofralloc
    lbz r5, 0x0(r4)
    lbz r0, 0x1(r4)
    stb r5, 0x0(r3)
    psq_l fp1, 0x4(r4), 0, 0
    stb r0, 0x1(r3)
    lfs fp0, 0xc(r4)
    psq_st fp1, 0x4(r3), 0, 0
    psq_l fp1, 0x10(r4), 0, 0
    stfs fp0, 0xc(r3)
    lwz r0, 0x18(r4)
    psq_st fp1, 0x10(r3), 0, 0
    psq_l fp1, 0x1c(r4), 0, 0
    stw r0, 0x18(r3)
    psq_l fp2, 0x24(r4), 0, 0
    psq_st fp1, 0x1c(r3), 0, 0
    psq_l fp0, 0x2c(r4), 0, 0
    psq_st fp2, 0x24(r3), 0, 0
    psq_l fp1, 0x34(r4), 0, 0
    psq_st fp0, 0x2c(r3), 0, 0
    psq_l fp0, 0x3c(r4), 0, 0
    psq_st fp1, 0x34(r3), 0, 0
    psq_l fp1, 0x44(r4), 0, 0
    psq_st fp0, 0x3c(r3), 0, 0
    psq_l fp0, 0x4c(r4), 0, 0
    psq_st fp1, 0x44(r3), 0, 0
    psq_l fp1, 0x54(r4), 0, 0
    psq_st fp0, 0x4c(r3), 0, 0
    psq_l fp0, 0x5c(r4), 0, 0
    psq_st fp1, 0x54(r3), 0, 0
    psq_st fp0, 0x5c(r3), 0, 0
    blr
}

ASM void fn_800E48EC(void)
{
    nofralloc
    psq_l fp0, 0x0(r4), 0, 0
    psq_l fp1, 0x8(r4), 0, 0
    psq_st fp0, 0x0(r3), 0, 0
    psq_l fp0, 0x10(r4), 0, 0
    psq_st fp1, 0x8(r3), 0, 0
    lbz r0, 0x18(r4)
    psq_st fp0, 0x10(r3), 0, 0
    stb r0, 0x18(r3)
    blr
}

ASM void fn_800E4910(void)
{
    nofralloc
    lbz r0, 0x0(r4)
    lbz r5, 0x1(r4)
    stb r0, 0x0(r3)
    lhz r0, 0x2(r4)
    stb r5, 0x1(r3)
    lfs fp1, 0x4(r4)
    sth r0, 0x2(r3)
    lfs fp0, 0x8(r4)
    stfs fp1, 0x4(r3)
    lfs fp1, 0xc(r4)
    stfs fp0, 0x8(r3)
    lfs fp0, 0x10(r4)
    stfs fp1, 0xc(r3)
    lbz r5, 0x14(r4)
    stfs fp0, 0x10(r3)
    lbz r0, 0x15(r4)
    stb r5, 0x14(r3)
    lbz r5, 0x16(r4)
    stb r0, 0x15(r3)
    lbz r0, 0x17(r4)
    stb r5, 0x16(r3)
    lhz r6, 0x18(r4)
    stb r0, 0x17(r3)
    lhz r5, 0x1a(r4)
    sth r6, 0x18(r3)
    lhz r0, 0x1c(r4)
    sth r5, 0x1a(r3)
    lhz r5, 0x1e(r4)
    sth r0, 0x1c(r3)
    lhz r0, 0x20(r4)
    sth r5, 0x1e(r3)
    lhz r6, 0x22(r4)
    sth r0, 0x20(r3)
    lhz r5, 0x24(r4)
    sth r6, 0x22(r3)
    lhz r0, 0x26(r4)
    sth r5, 0x24(r3)
    lhz r5, 0x28(r4)
    sth r0, 0x26(r3)
    lhz r0, 0x2a(r4)
    sth r5, 0x28(r3)
    sth r0, 0x2a(r3)
    blr
}

ASM void fn_800E49BC(void)
{
    nofralloc
    lbz r0, 0x0(r4)
    lfs fp0, 0x4(r4)
    stb r0, 0x0(r3)
    lfs fp1, 0x8(r4)
    stfs fp0, 0x4(r3)
    lfs fp0, 0xc(r4)
    stfs fp1, 0x8(r3)
    stfs fp0, 0xc(r3)
    blr
}

ASM void fn_800E49E0(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stfd fp31, 0x20(r1)
    psq_st fp31, 0x28(r1), 0, 0
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    opword  0x800D8E68  // lwz r0, lbl_8053AA28@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820030  // bne .L_800E4A34
    bl OSInit
    bl DVDInit
    opword  0x806D8270  // lwz r3, lbl_80539E30@sda21(r0)
    li r4, 0x0
    bl fn_80081454
    mr r4, r3
    opword  0x806D8274  // lwz r3, lbl_80539E34@sda21(r0)
    opword  0x908D8E68  // stw r4, lbl_8053AA28@sda21(r0)
    li r5, 0x0
    bl fn_800814D4
    opword  0x906D8E6C  // stw r3, lbl_8053AA2C@sda21(r0)
L_800E4A34:
    li r0, 0x1
    opword  0x806D827C  // lwz r3, lbl_80539E3C@sda21(r0)
    opword  0x980D8E84  // stb r0, lbl_8053AA44@sda21(r0)
    opword  0x808D8280  // lwz r4, lbl_80539E40@sda21(r0)
    opword  0x80AD8284  // lwz r5, lbl_80539E44@sda21(r0)
    opword  0x80CD8288  // lwz r6, lbl_80539E48@sda21(r0)
    opword  0x80ED828C  // lwz r7, lbl_80539E4C@sda21(r0)
    bl JKRAram_create
    li r3, 0x7c
    bl fn_80084370
    mr. r30, r3
    opword  0x4182001C  // beq .L_800E4A7C
    bl OSGetCurrentThread
    mr r4, r3
    mr r3, r30
    li r5, 0x4
    bl fn_800855CC
    mr r30, r3
L_800E4A7C:
    opword  0x93CD8E70  // stw r30, lbl_8053AA30@sda21(r0)
    opword  0x806D8294  // lwz r3, lbl_80539E54@sda21(r0)
    bl fn_80092A98
    opword  0x83ED8278  // lwz r31, lbl_80539E38@sda21(r0)
    li r3, 0x1c
    bl fn_80084370
    cmplwi r3, 0x0
    opword  0x4182000C  // beq .L_800E4AA4
    mr r4, r31
    bl fn_8008E7A4
L_800E4AA4:
    bl fn_8008D110
    bl fn_800898B0
    mr r30, r3
    bl fn_80087ABC
    mr r3, r30
    bl fn_80089FF0
    li r3, 0x70
    bl fn_80084370
    mr. r0, r3
    opword  0x41820014  // beq .L_800E4ADC
    opword  0x808D8290  // lwz r4, lbl_80539E50@sda21(r0)
    li r5, 0x0
    bl fn_80090DF0
    mr r0, r3
L_800E4ADC:
    opword  0x900D8E78  // stw r0, lbl_8053AA38@sda21(r0)
    li r3, 0x0
    li r4, 0x0
    bl fn_800891B8
    opword  0x906D8E74  // stw r3, lbl_8053AA34@sda21(r0)
    opword  0x808D8E78  // lwz r4, lbl_8053AA38@sda21(r0)
    bl fn_80089264
    li r3, 0x0
    bl fn_80088B7C
    opword  0x906D8E7C  // stw r3, lbl_8053AA3C@sda21(r0)
    li r3, 0x3c
    li r4, 0xc8
    li r5, 0x0
    bl fn_80087DC0
    mr r31, r3
    opword  0x806D8E78  // lwz r3, lbl_8053AA38@sda21(r0)
    opword  0x93ED8E80  // stw r31, lbl_8053AA40@sda21(r0)
    mr r30, r3
    stw r3, 0x4c(r31)
    lwz r12, 0x0(r3)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    xoris r4, r3, 0x8000
    lis r0, 0x4330
    mr r3, r30
    stw r4, 0xc(r1)
    lwz r12, 0x0(r30)
    stw r0, 0x8(r1)
    opword  0xC8228D58  // lfd f1, lbl_8053BCF8@sda21(r0)
    lfd fp0, 0x8(r1)
    lwz r12, 0x28(r12)
    fsubs fp31, fp0, fp1
    mtctr r12
    bctrl
    xoris r3, r3, 0x8000
    lis r0, 0x4330
    stw r3, 0x14(r1)
    opword  0xC8228D58  // lfd f1, lbl_8053BCF8@sda21(r0)
    stw r0, 0x10(r1)
    lfd fp0, 0x10(r1)
    fsubs fp0, fp0, fp1
    stfs fp0, 0x50(r31)
    stfs fp31, 0x54(r31)
    opword  0x806D8294  // lwz r3, lbl_80539E54@sda21(r0)
    lhz r0, 0x6(r3)
    cmplwi r0, 0x12c
    opword  0x40800098  // bge .L_800E4C30
    opword  0x806D8E78  // lwz r3, lbl_8053AA38@sda21(r0)
    lwz r12, 0x0(r3)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    xoris r3, r3, 0x8000
    lis r0, 0x4330
    stw r3, 0x14(r1)
    opword  0x806D8E78  // lwz r3, lbl_8053AA38@sda21(r0)
    stw r0, 0x10(r1)
    opword  0xC8228D58  // lfd f1, lbl_8053BCF8@sda21(r0)
    lfd fp0, 0x10(r1)
    lwz r12, 0x0(r3)
    fsubs fp1, fp0, fp1
    opword  0xC0028D50  // lfs f0, lbl_8053BCF0@sda21(r0)
    lwz r12, 0x28(r12)
    fmuls fp31, fp0, fp1
    mtctr r12
    bctrl
    xoris r0, r3, 0x8000
    lis r4, 0x4330
    stw r0, 0xc(r1)
    li r3, 0x14
    opword  0xC8428D58  // lfd f2, lbl_8053BCF8@sda21(r0)
    li r0, 0x19
    stw r4, 0x8(r1)
    opword  0xC0028D54  // lfs f0, lbl_8053BCF4@sda21(r0)
    lfd fp1, 0x8(r1)
    opword  0x808D8E80  // lwz r4, lbl_8053AA40@sda21(r0)
    fsubs fp1, fp1, fp2
    fmuls fp0, fp0, fp1
    stfs fp0, 0x50(r4)
    stfs fp31, 0x54(r4)
    opword  0x808D8E80  // lwz r4, lbl_8053AA40@sda21(r0)
    stw r3, 0x40(r4)
    stw r0, 0x44(r4)
    opword  0x48000084  // b .L_800E4CB0
L_800E4C30:
    opword  0x806D8E78  // lwz r3, lbl_8053AA38@sda21(r0)
    lwz r12, 0x0(r3)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    xoris r4, r3, 0x8000
    opword  0x806D8E78  // lwz r3, lbl_8053AA38@sda21(r0)
    lis r0, 0x4330
    stw r4, 0x14(r1)
    lwz r12, 0x0(r3)
    stw r0, 0x10(r1)
    opword  0xC8228D58  // lfd f1, lbl_8053BCF8@sda21(r0)
    lfd fp0, 0x10(r1)
    lwz r12, 0x28(r12)
    fsubs fp31, fp0, fp1
    mtctr r12
    bctrl
    xoris r0, r3, 0x8000
    lis r4, 0x4330
    stw r0, 0xc(r1)
    li r3, 0x14
    opword  0xC8228D58  // lfd f1, lbl_8053BCF8@sda21(r0)
    li r0, 0x32
    stw r4, 0x8(r1)
    opword  0x808D8E80  // lwz r4, lbl_8053AA40@sda21(r0)
    lfd fp0, 0x8(r1)
    fsubs fp0, fp0, fp1
    stfs fp0, 0x50(r4)
    stfs fp31, 0x54(r4)
    opword  0x808D8E80  // lwz r4, lbl_8053AA40@sda21(r0)
    stw r3, 0x40(r4)
    stw r0, 0x44(r4)
L_800E4CB0:
    opword  0x806D8E80  // lwz r3, lbl_8053AA40@sda21(r0)
    li r0, 0x19
    stw r0, 0x48(r3)
    lwz r0, 0x48(r3)
    lwz r4, 0x24(r3)
    cmplw r0, r4
    opword  0x40810008  // ble .L_800E4CD0
    stw r4, 0x48(r3)
L_800E4CD0:
    opword  0x806D8E80  // lwz r3, lbl_8053AA40@sda21(r0)
    li r4, 0x0
    li r0, 0x3
    stb r4, 0x68(r3)
    opword  0x806D8E80  // lwz r3, lbl_8053AA40@sda21(r0)
    stw r0, 0x58(r3)
    opword  0x806D8E80  // lwz r3, lbl_8053AA40@sda21(r0)
    bl fn_80088F88
    opword  0x806D8E80  // lwz r3, lbl_8053AA40@sda21(r0)
    bl fn_80088F98
    opword  0x806D8E6C  // lwz r3, lbl_8053AA2C@sda21(r0)
    li r5, 0x4
    opword  0x808D8298  // lwz r4, lbl_80539E58@sda21(r0)
    bl fn_800838C8
    opword  0x808D8298  // lwz r4, lbl_80539E58@sda21(r0)
    bl fn_8008C944
    psq_l fp31, 0x28(r1), 0, 0
    lwz r0, 0x34(r1)
    lfd fp31, 0x20(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

// fn_800E4D30/fn_800E4DAC/fn_800E4EE0/fn_800E53E8/fn_800E5748 are the
// dtor/ctor/calc/draw/present quintet of THE TOP-LEVEL PERSISTENT MANAGER
// class (vtable lbl_8049BEA0, singleton lbl_8053AA48 - see
// [[project_fsa_core_systems_gap]]'s main() landing). main()'s per-frame
// loop calls this class's vtable slots +0x8/+0xc/+0x10 (calc/draw/present)
// EVERY FRAME REGARDLESS OF SCENE - this is genuinely "the main loop"'s
// real per-frame body, not just main()'s own dispatch shell. All 4/5 were
// already mechanically transcribed earlier this session but never
// annotated with real understanding until now (per the retroactive
// [[feedback_fsa_real_decompilation_required]] mandate).
//
// fn_800E4D30 - the real destructor: rebinds the vtable, conditionally
// calls fn_800E5904(2) if the "active resource" global (`lbl_8053A980`)
// is set, cleans up via fn_8008ED94/fn_80093108, zeroes this->0x10, then
// the shared base dtor (`dtor_80084580`) if freeFlag>0.
ASM void fn_800E4D30(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820044  // beq .L_800E4D90
    lis r4, lbl_8049BEA0@ha
    addi r0, r4, lbl_8049BEA0@l
    stw r0, 0x0(r30)
    opword  0x800D8DC0  // lwz r0, lbl_8053A980@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_800E4D70
    li r4, 0x2
    bl fn_800E5904
L_800E4D70:
    bl fn_8008ED94
    bl fn_80093108
    li r3, 0x0
    extsh. r0, r31
    stw r3, 0x10(r30)
    opword  0x4081000C  // ble .L_800E4D90
    mr r3, r30
    bl dtor_80084580
L_800E4D90:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

// fn_800E4DAC - the real constructor: installs vtable `lbl_8049BEA0`,
// stores itself into the singleton `lbl_8053AA48` (only if not already
// constructed - guards on the global first). Sets up several sub-fields
// used by calc/draw/present (a 4-char code written via `fn_80092FD0`'s
// generic setter, default color/table constants). This is the ONLY place
// `lbl_8053AA48` is ever assigned - confirmed as a true one-time,
// never-reallocated top-level manager (unlike the current-scene pointer
// `lbl_8053AAF8`, which main() reallocates on every scene transition).
ASM void fn_800E4DAC(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    mr. r0, r3
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r6
    stw r29, 0x14(r1)
    mr r29, r5
    stw r28, 0x10(r1)
    mr r28, r4
    opword  0x41820010  // beq .L_800E4DE8
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    mr r4, r0
    bl fn_80092FD0
L_800E4DE8:
    opword  0x800D8E88  // lwz r0, lbl_8053AA48@sda21(r0)
    cmplwi r0, 0x0
    opword  0x408200CC  // bne .L_800E4EBC
    li r3, 0x4c
    bl fn_80084370
    mr. r31, r3
    opword  0x418200B8  // beq .L_800E4EB8
    lis r4, lbl_8049BEA0@ha
    lis r3, 0x100
    addi r4, r4, lbl_8049BEA0@l
    li r0, -0x1
    stw r4, 0x0(r31)
    li r5, 0x3
    li r4, 0x0
    subi r3, r3, 0x1
    stw r0, 0x8(r31)
    li r0, 0x1
    opword  0xC0028D60  // lfs f0, lbl_8053BD00@sda21(r0)
    stb r30, 0x24(r31)
    sth r5, 0x26(r31)
    stb r4, 0x8(r31)
    stb r4, 0x9(r31)
    stb r4, 0xa(r31)
    stb r4, 0xb(r31)
    stw r3, 0xc(r31)
    sth r4, 0x14(r31)
    stw r4, 0x4(r31)
    sth r0, 0x1c(r31)
    stw r4, 0x20(r31)
    stfs fp0, 0x28(r31)
    stw r4, 0x30(r31)
    bl OSGetTick
    stw r3, 0x2c(r31)
    li r0, 0x0
    mr r3, r31
    stw r0, 0x34(r31)
    sth r0, 0x48(r31)
    stb r0, 0x4a(r31)
    stw r0, 0x18(r31)
    bl fn_800E5B70
    bl fn_8008EC64
    bl fn_8008EDD4
    li r3, 0x1
    li r0, 0x0
    stw r3, 0x38(r31)
    mr r3, r28
    mr r4, r29
    stw r0, 0x3c(r31)
    stb r0, 0x40(r31)
    stw r0, 0x44(r31)
    bl fn_80093060
    stw r3, 0x10(r31)
L_800E4EB8:
    opword  0x93ED8E88  // stw r31, lbl_8053AA48@sda21(r0)
L_800E4EBC:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    opword  0x806D8E88  // lwz r3, lbl_8053AA48@sda21(r0)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

// fn_800E4EE0 - THE REAL PER-FRAME calc() (vtable slot +0x8). Genuinely
// understood as 3 distinct pieces:
//
// 1. A built-in DEVELOPER PERFORMANCE PROFILER left compiled into retail:
//    `lbl_8053A968` is a frame-timer object with many named "zone" record
//    pairs (a start `OSGetTick()` value + a {0xff,0x81,0x1e} RGB color
//    triple per zone, e.g. `->0x50/0x54`+`->0x60-62`, `->0x0/0x4`+
//    `->0x10-12`) - classic colored-bar frame-profiler bookkeeping,
//    gated on `this->0x40` (a debug/profiler-enabled flag). Converts raw
//    tick deltas to a normalized value via the bus-clock-derived
//    `mulhwu`/`divwu` sequence (the standard `OSTicksToMilliseconds`-style
//    idiom), clamping to a minimum of 1.
// 2. CORRECTION (re-traced during the rendering-pipeline investigation,
//    see [[project_fsa_rendering_pipeline_foothold]]): `fn_800E5954
//    (this->0x20, this->0x1c)` is NOT the game-logic update - opened it
//    up and it's purely a FRAME-PACING/TIMING WAIT: either an
//    OSReceiveMessage-based wait on a vsync-fed message queue (bounded by
//    a delta-tick threshold), or a raw OSGetTime busy-wait loop, with NO
//    calls into actor/scene code at all. The actual per-frame game-logic
//    update is still NOT LOCATED - it happens somewhere else, wrapped by
//    the SAME profiler timing this comment block describes. Also tracks
//    its own delta-time (`this->0x2c`=last tick, `->0x30`=delta) against
//    a reference value
//    at `lbl_8053A984` (`->0x34`).
// 3. A DEVELOPER DEBUG-CONSOLE OVERLAY state machine
//    (`lbl_8053A998`, `->0x10` = state 0-4: closed/opening/open/scrolling/
//    closing) - dispatches per state to open (`fn_800E5C10`), poll input
//    for scroll direction, or step a scroll animation, gated by the SAME
//    "active resource" screen-dimensions struct (`lbl_8053A980->0x4`)
//    used throughout this whole session for font/UI metrics. Also toggles
//    a fog/render-state pair (`fn_8005F5A0`/`fn_8005F674`) based on
//    whether the console or a HUD flag (`this->0x24`) is active.
ASM void fn_800E4EE0(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    stfd fp31, 0x38(r1)
    stmw r27, 0x24(r1)
    mr r30, r3
    lbz r0, 0x40(r3)
    cmplwi r0, 0x0
    opword  0x41820050  // beq .L_800E4F50
    opword  0x83AD8DA8  // lwz r29, lbl_8053A968@sda21(r0)
    bl OSGetTick
    lis r5, 0x8000
    lis r4, 0x431c
    lwz r0, 0xf8(r5)
    subi r4, r4, 0x217d
    lwz r5, 0x50(r29)
    srwi r0, r0, 2
    mulhwu r0, r4, r0
    subf r3, r5, r3
    slwi r3, r3, 3
    srwi r0, r0, 15
    divwu r0, r3, r0
    stw r0, 0x54(r29)
    lwz r0, 0x54(r29)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_800E4F50
    li r0, 0x1
    stw r0, 0x54(r29)
L_800E4F50:
    lbz r0, 0x40(r30)
    cmplwi r0, 0x0
    opword  0x4182004C  // beq .L_800E4FA4
    opword  0x836D8DA8  // lwz r27, lbl_8053A968@sda21(r0)
    li r4, 0xff
    li r3, 0x81
    li r0, 0x1e
    stb r4, 0x60(r27)
    stb r3, 0x61(r27)
    stb r0, 0x62(r27)
    bl OSGetTick
    stw r3, 0x50(r27)
    li r4, 0xff
    li r3, 0x81
    li r0, 0x1e
    opword  0x836D8DA8  // lwz r27, lbl_8053A968@sda21(r0)
    stb r4, 0x10(r27)
    stb r3, 0x11(r27)
    stb r0, 0x12(r27)
    bl OSGetTick
    stw r3, 0x0(r27)
L_800E4FA4:
    lwz r3, 0x20(r30)
    lhz r4, 0x1c(r30)
    bl fn_800E5954
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    bl fn_80093048
    bl OSGetTick
    lwz r0, 0x2c(r30)
    subf r0, r0, r3
    stw r0, 0x30(r30)
    stw r3, 0x2c(r30)
    opword  0x806D8DC4  // lwz r3, lbl_8053A984@sda21(r0)
    lwz r0, 0x2c(r30)
    subf r0, r3, r0
    stw r0, 0x34(r30)
    lbz r0, 0x40(r30)
    cmplwi r0, 0x0
    opword  0x41820050  // beq .L_800E5034
    opword  0x83AD8DA8  // lwz r29, lbl_8053A968@sda21(r0)
    bl OSGetTick
    lis r5, 0x8000
    lis r4, 0x431c
    lwz r0, 0xf8(r5)
    subi r4, r4, 0x217d
    lwz r5, 0x0(r29)
    srwi r0, r0, 2
    mulhwu r0, r4, r0
    subf r3, r5, r3
    slwi r3, r3, 3
    srwi r0, r0, 15
    divwu r0, r3, r0
    stw r0, 0x4(r29)
    lwz r0, 0x4(r29)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_800E5034
    li r0, 0x1
    stw r0, 0x4(r29)
L_800E5034:
    lbz r0, 0x40(r30)
    cmplwi r0, 0x0
    opword  0x418202DC  // beq .L_800E5318
    opword  0x836D8DA8  // lwz r27, lbl_8053A968@sda21(r0)
    li r4, 0xff
    li r3, 0x81
    li r0, 0x1e
    stb r4, 0x24(r27)
    stb r3, 0x25(r27)
    stb r0, 0x26(r27)
    bl OSGetTick
    stw r3, 0x14(r27)
    opword  0x83ED8DD8  // lwz r31, lbl_8053A998@sda21(r0)
    lwz r0, 0x10(r31)
    cmpwi r0, 0x2
    opword  0x41820060  // beq .L_800E50D0
    opword  0x40800010  // bge .L_800E5084
    cmpwi r0, 0x1
    opword  0x40800014  // bge .L_800E5090
    opword  0x48000298  // b .L_800E5318
L_800E5084:
    cmpwi r0, 0x4
    opword  0x40800290  // bge .L_800E5318
    opword  0x4800020C  // b .L_800E5298
L_800E5090:
    lwz r0, 0x1c(r31)
    cmpwi r0, 0x2
    opword  0x41820024  // beq .L_800E50BC
    li r0, 0x1
    mr r3, r30
    stw r0, 0x1c(r31)
    addi r4, r1, 0x10
    lwz r0, 0x8(r30)
    stw r0, 0x10(r1)
    bl fn_800E5C10
    opword  0x4800000C  // b .L_800E50C4
L_800E50BC:
    li r0, 0x1
    stw r0, 0x1c(r31)
L_800E50C4:
    lha r0, 0x48(r30)
    sth r0, 0x14(r31)
    opword  0x4800024C  // b .L_800E5318
L_800E50D0:
    lha r3, 0x16(r31)
    lha r0, 0x18(r31)
    cmpw r3, r0
    opword  0x40820190  // bne .L_800E526C
    lha r0, 0x14(r31)
    cmpwi r0, 0x0
    opword  0x41800164  // blt .L_800E524C
    lwz r12, 0x44(r30)
    cmplwi r12, 0x0
    opword  0x4182000C  // beq .L_800E5100
    mtctr r12
    bctrl
L_800E5100:
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    lwz r3, 0x4(r3)
    lhz r27, 0x6(r3)
    lhz r28, 0x4(r3)
    lhz r4, 0x8(r3)
    mr r3, r27
    bl fn_8005C870
    fmr fp31, fp1
    mr r3, r27
    bl fn_8005C7E0
    lwz r0, 0x8(r30)
    mr r29, r3
    addi r3, r1, 0x8
    stw r0, 0x8(r1)
    lwz r4, 0xc(r30)
    bl fn_8005CB74
    mr r5, r28
    mr r6, r27
    li r3, 0x0
    li r4, 0x0
    bl fn_8005C508
    mr r3, r28
    mr r4, r29
    bl fn_8005C600
    fmr fp1, fp31
    bl fn_8005CAA8
    bl fn_8004CF18
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    li r5, 0x1
    lwz r4, 0x4(r3)
    lbz r3, 0x19(r4)
    addi r6, r4, 0x32
    addi r4, r4, 0x1a
    bl fn_8005CBEC
    lhz r3, 0x26(r30)
    bl fn_8005C788
    lhz r3, 0x14(r30)
    bl fn_8005CDF4
    li r3, 0x1
    li r4, 0x3
    li r5, 0x1
    bl fn_8005F538
    lbz r0, 0x24(r30)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_800E51BC
    li r3, 0x1
    bl fn_8005F50C
L_800E51BC:
    lha r3, 0x14(r31)
    extsh. r0, r3
    opword  0x41800010  // blt .L_800E51D4
    slwi r0, r3, 2
    lwzx r3, r31, r0
    opword  0x48000008  // b .L_800E51D8
L_800E51D4:
    li r3, 0x0
L_800E51D8:
    li r4, 0x1
    bl fn_8005CE08
    lwz r0, 0x18(r30)
    cmpwi r0, 0x0
    opword  0x40820018  // bne .L_800E5200
    lha r0, 0x14(r31)
    sth r0, 0x16(r31)
    bl fn_8005BDDC
    bl fn_80092EF0
    opword  0x48000008  // b .L_800E5204
L_800E5200:
    bl fn_80092EC8
L_800E5204:
    lwz r0, 0x18(r30)
    cmpwi r0, 0x0
    opword  0x40820040  // bne .L_800E524C
    opword  0x80ED8DD8  // lwz r7, lbl_8053A998@sda21(r0)
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    lha r0, 0x14(r7)
    lwz r4, 0x4(r3)
    cmpwi r0, 0x0
    opword  0x806D8D38  // lwz r3, lbl_8053A8F8@sda21(r0)
    lhz r5, 0x4(r4)
    lhz r6, 0x6(r4)
    opword  0x41800010  // blt .L_800E5240
    slwi r0, r0, 2
    lwzx r4, r7, r0
    opword  0x48000008  // b .L_800E5244
L_800E5240:
    li r4, 0x0
L_800E5244:
    bl fn_80089C70
    bl fn_80087AC0
L_800E524C:
    lha r0, 0x14(r31)
    srwi r3, r0, 31
    sth r0, 0x16(r31)
    subi r3, r3, 0x1
    xori r0, r0, 0x1
    and r0, r0, r3
    sth r0, 0x14(r31)
    opword  0x480000B0  // b .L_800E5318
L_800E526C:
    lwz r0, 0x8(r30)
    mr r3, r30
    addi r4, r1, 0xc
    stw r0, 0xc(r1)
    bl fn_800E5C10
    lha r0, 0x14(r31)
    cmpwi r0, 0x0
    opword  0x40800090  // bge .L_800E5318
    li r0, 0x0
    sth r0, 0x14(r31)
    opword  0x48000084  // b .L_800E5318
L_800E5298:
    lha r7, 0x14(r31)
    extsh. r0, r7
    opword  0x41800038  // blt .L_800E52D8
    opword  0x808D8DC0  // lwz r4, lbl_8053A980@sda21(r0)
    extsh. r0, r7
    opword  0x806D8D38  // lwz r3, lbl_8053A8F8@sda21(r0)
    lwz r4, 0x4(r4)
    lhz r5, 0x4(r4)
    lhz r6, 0x6(r4)
    opword  0x41800010  // blt .L_800E52CC
    slwi r0, r7, 2
    lwzx r4, r31, r0
    opword  0x48000008  // b .L_800E52D0
L_800E52CC:
    li r4, 0x0
L_800E52D0:
    bl fn_80089C70
    bl fn_80087AC0
L_800E52D8:
    lha r0, 0x14(r31)
    sth r0, 0x16(r31)
    lha r3, 0x14(r31)
    lha r4, 0x18(r31)
    addi r0, r3, 0x1
    extsh r3, r0
L_800E52F0:
    extsh r0, r3
    cmpwi r0, 0x3
    opword  0x4080000C  // bge .L_800E5304
    extsh. r0, r3
    opword  0x40800008  // bge .L_800E5308
L_800E5304:
    li r3, 0x0
L_800E5308:
    extsh r0, r3
    cmpw r0, r4
    opword  0x4182FFE0  // beq .L_800E52F0
    sth r3, 0x14(r31)
L_800E5318:
    lwz r3, 0x3c(r30)
    addi r0, r3, 0x1
    stw r0, 0x3c(r30)
    lwz r5, 0x3c(r30)
    lwz r0, 0x38(r30)
    srawi r4, r5, 31
    srwi r3, r0, 31
    subfc r0, r0, r5
    adde r3, r4, r3
    clrlwi. r0, r3, 24
    stb r3, 0x40(r30)
    opword  0x4182000C  // beq .L_800E5350
    li r0, 0x0
    stw r0, 0x3c(r30)
L_800E5350:
    lbz r0, 0x40(r30)
    cmplwi r0, 0x0
    opword  0x41820078  // beq .L_800E53D0
    mr r3, r30
    bl fn_800E5BE4
    bl fn_8005DEC4
    bl fn_8005B6AC
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    lwz r3, 0x4(r3)
    lbz r0, 0x19(r3)
    cmplwi r0, 0x0
    opword  0x4182001C  // beq .L_800E5398
    li r3, 0x2
    li r4, 0x0
    bl fn_8005F5A0
    li r3, 0x1
    bl fn_8005F674
    opword  0x4800003C  // b .L_800E53D0
L_800E5398:
    lbz r0, 0x24(r30)
    cmplwi r0, 0x0
    opword  0x4182001C  // beq .L_800E53BC
    li r3, 0x1
    li r4, 0x0
    bl fn_8005F5A0
    li r3, 0x1
    bl fn_8005F674
    opword  0x48000018  // b .L_800E53D0
L_800E53BC:
    li r3, 0x0
    li r4, 0x0
    bl fn_8005F5A0
    li r3, 0x0
    bl fn_8005F674
L_800E53D0:
    lfd fp31, 0x38(r1)
    lmw r27, 0x24(r1)
    lwz r0, 0x44(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

// fn_800E53E8 - THE REAL PER-FRAME draw() (vtable slot +0xc). Sets up the
// frame's render pass (`fn_80093894`, called repeatedly as a per-subsystem
// "begin draw" marker), then conditionally draws up to 2 owned overlays
// (gated on `this->0x4` and the global `lbl_8053A8E0`), draws the
// PERFORMANCE-PROFILER HUD itself (`fn_8008EEA4(lbl_8053A968)` - the
// visual counterpart to calc()'s timing bookkeeping), then draws the SAME
// developer debug-console overlay calc() manages state for
// (`lbl_8053A998`, same state dispatch, same GX viewport/text-render
// battery `fn_8005C870`/`7E0`/`CB74`/`C508`/`C600`/`CAA8`/`CF18`/`CBEC`/
// `C788`/`CDF4`), finishing with `fn_800E6224`/`fn_8005BE5C` (console-
// specific draw helpers) and `fn_800E6198` (end-of-draw). Records another
// profiler zone start (`lbl_8053A968->0x38-0x3a`) right before returning.
ASM void fn_800E53E8(void)
{
    nofralloc
    stwu r1, -0x120(r1)
    mflr r0
    stw r0, 0x124(r1)
    stfd fp31, 0x110(r1)
    psq_st fp31, 0x118(r1), 0, 0
    stmw r27, 0xfc(r1)
    opword  0x80AD8DC0  // lwz r5, lbl_8053A980@sda21(r0)
    lis r4, 0x4330
    opword  0xC0228D60  // lfs f1, lbl_8053BD00@sda21(r0)
    mr r30, r3
    lwz r6, 0x4(r5)
    addi r3, r1, 0x10
    stw r4, 0xe8(r1)
    fmr fp2, fp1
    lhz r5, 0x4(r6)
    lhz r0, 0x6(r6)
    stw r5, 0xec(r1)
    opword  0xC8828D70  // lfd f4, lbl_8053BD10@sda21(r0)
    lfd fp0, 0xe8(r1)
    stw r0, 0xf4(r1)
    fsubs fp3, fp0, fp4
    opword  0xC0A28D64  // lfs f5, lbl_8053BD04@sda21(r0)
    stw r4, 0xf0(r1)
    opword  0xC0C28D68  // lfs f6, lbl_8053BD08@sda21(r0)
    lfd fp0, 0xf0(r1)
    fsubs fp4, fp0, fp4
    bl fn_800937B0
    lwz r0, 0x4(r30)
    cmplwi r0, 0x0
    opword  0x41820014  // beq .L_800E5470
    addi r3, r1, 0x10
    bl fn_80093894
    lwz r3, 0x4(r30)
    bl fn_8008CB40
L_800E5470:
    addi r3, r1, 0x10
    bl fn_80093894
    opword  0x806D8D30  // lwz r3, lbl_8053A8F0@sda21(r0)
    bl fn_8008927C
    opword  0x800D8D20  // lwz r0, lbl_8053A8E0@sda21(r0)
    cmplwi r0, 0x0
    opword  0x41820014  // beq .L_800E549C
    addi r3, r1, 0x10
    bl fn_80093894
    opword  0x806D8D20  // lwz r3, lbl_8053A8E0@sda21(r0)
    bl fn_80088D1C
L_800E549C:
    addi r3, r1, 0x10
    bl fn_80093894
    opword  0x806D8DA8  // lwz r3, lbl_8053A968@sda21(r0)
    bl fn_8008EEA4
    lwz r0, 0x18(r30)
    cmpwi r0, 0x0
    opword  0x40820014  // bne .L_800E54C8
    opword  0x806D8DD8  // lwz r3, lbl_8053A998@sda21(r0)
    lwz r0, 0x10(r3)
    cmpwi r0, 0x1
    opword  0x40820008  // bne .L_800E54CC
L_800E54C8:
    bl fn_80087BAC
L_800E54CC:
    bl fn_8005BA0C
    lis r4, lbl_80499520@ha
    lis r3, lbl_80499548@ha
    addi r0, r4, lbl_80499520@l
    stw r0, 0x10(r1)
    addi r0, r3, lbl_80499548@l
    stw r0, 0x10(r1)
    lbz r0, 0x40(r30)
    cmplwi r0, 0x0
    opword  0x41820210  // beq .L_800E5700
    opword  0x83ED8DD8  // lwz r31, lbl_8053A998@sda21(r0)
    lwz r0, 0x10(r31)
    cmpwi r0, 0x2
    opword  0x41820200  // beq .L_800E5700
    opword  0x40800010  // bge .L_800E5514
    cmpwi r0, 0x1
    opword  0x40800014  // bge .L_800E5520
    opword  0x480001F0  // b .L_800E5700
L_800E5514:
    cmpwi r0, 0x4
    opword  0x408001E8  // bge .L_800E5700
    opword  0x480000E0  // b .L_800E55FC
L_800E5520:
    lha r0, 0x14(r31)
    cmpwi r0, 0x0
    opword  0x418001D8  // blt .L_800E5700
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    lwz r3, 0x4(r3)
    lhz r27, 0x6(r3)
    lhz r28, 0x4(r3)
    lhz r4, 0x8(r3)
    mr r3, r27
    bl fn_8005C870
    fmr fp31, fp1
    mr r3, r27
    bl fn_8005C7E0
    lwz r0, 0x8(r30)
    mr r29, r3
    addi r3, r1, 0xc
    stw r0, 0xc(r1)
    lwz r4, 0xc(r30)
    bl fn_8005CB74
    mr r5, r28
    mr r6, r27
    li r3, 0x0
    li r4, 0x0
    bl fn_8005C508
    mr r3, r28
    mr r4, r29
    bl fn_8005C600
    fmr fp1, fp31
    bl fn_8005CAA8
    bl fn_8004CF18
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    li r5, 0x1
    lwz r4, 0x4(r3)
    lbz r3, 0x19(r4)
    addi r6, r4, 0x32
    addi r4, r4, 0x1a
    bl fn_8005CBEC
    lhz r3, 0x26(r30)
    bl fn_8005C788
    lhz r3, 0x14(r30)
    bl fn_8005CDF4
    li r3, 0x1
    li r4, 0x3
    li r5, 0x1
    bl fn_8005F538
    lbz r0, 0x24(r30)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_800E55E8
    li r3, 0x1
    bl fn_8005F50C
L_800E55E8:
    bl fn_800E6224
    bl fn_8005BA0C
    lha r0, 0x14(r31)
    sth r0, 0x16(r31)
    opword  0x48000108  // b .L_800E5700
L_800E55FC:
    lha r0, 0x14(r31)
    cmpwi r0, 0x0
    opword  0x418000FC  // blt .L_800E5700
    lwz r12, 0x44(r30)
    cmplwi r12, 0x0
    opword  0x4182000C  // beq .L_800E561C
    mtctr r12
    bctrl
L_800E561C:
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    lwz r3, 0x4(r3)
    lhz r28, 0x6(r3)
    lhz r27, 0x4(r3)
    lhz r4, 0x8(r3)
    mr r3, r28
    bl fn_8005C870
    fmr fp31, fp1
    mr r3, r28
    bl fn_8005C7E0
    lwz r0, 0x8(r30)
    mr r29, r3
    addi r3, r1, 0x8
    stw r0, 0x8(r1)
    lwz r4, 0xc(r30)
    bl fn_8005CB74
    mr r5, r27
    mr r6, r28
    li r3, 0x0
    li r4, 0x0
    bl fn_8005C508
    mr r3, r27
    mr r4, r29
    bl fn_8005C600
    fmr fp1, fp31
    bl fn_8005CAA8
    bl fn_8004CF18
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    li r5, 0x1
    lwz r4, 0x4(r3)
    lbz r3, 0x19(r4)
    addi r6, r4, 0x32
    addi r4, r4, 0x1a
    bl fn_8005CBEC
    lhz r3, 0x26(r30)
    bl fn_8005C788
    lhz r3, 0x14(r30)
    bl fn_8005CDF4
    li r3, 0x1
    li r4, 0x3
    li r5, 0x1
    bl fn_8005F538
    lbz r0, 0x24(r30)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_800E56D8
    li r3, 0x1
    bl fn_8005F50C
L_800E56D8:
    lha r3, 0x14(r31)
    extsh. r0, r3
    opword  0x41800010  // blt .L_800E56F0
    slwi r0, r3, 2
    lwzx r3, r31, r0
    opword  0x48000008  // b .L_800E56F4
L_800E56F0:
    li r3, 0x0
L_800E56F4:
    li r4, 0x1
    bl fn_8005CE08
    bl fn_8005BE5C
L_800E5700:
    opword  0x836D8DA8  // lwz r27, lbl_8053A968@sda21(r0)
    li r4, 0xff
    li r3, 0x81
    li r0, 0x1e
    stb r4, 0x38(r27)
    stb r3, 0x39(r27)
    stb r0, 0x3a(r27)
    bl OSGetTick
    stw r3, 0x28(r27)
    mr r3, r30
    bl fn_800E6198
    psq_l fp31, 0x118(r1), 0, 0
    lfd fp31, 0x110(r1)
    lmw r27, 0xfc(r1)
    lwz r0, 0x124(r1)
    mtlr r0
    addi r1, r1, 0x120
    blr
}

// fn_800E5748 - THE REAL PER-FRAME present() (vtable slot +0x10). Closes
// out several more profiler zones (`lbl_8053A968->0x28/0x2c`,
// `->0x3c/0x40`, `->0x14/0x18`), drives the console-scroll animation for
// states 2/4 (`fn_800E6224`/`fn_8005BA0C`, same helpers draw() calls),
// then measures the REAL WALL-CLOCK FRAME TIME via a dedicated persistent
// tick+flag pair (`lbl_8053AA4C`/`lbl_8053AA50`, set once via
// `fn_8004D140` then diffed against itself every subsequent call) and
// stores the result into `lbl_8053A968->0x104` - this is the actual FPS/
// frame-time counter the profiler HUD displays, distinct from the
// per-zone CPU-tick profiling calc()/draw() do.
ASM void fn_800E5748(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    stw r30, 0x8(r1)
    opword  0x83CD8DA8  // lwz r30, lbl_8053A968@sda21(r0)
    bl OSGetTick
    lis r5, 0x8000
    lis r4, 0x431c
    lwz r0, 0xf8(r5)
    subi r4, r4, 0x217d
    lwz r5, 0x28(r30)
    srwi r0, r0, 2
    mulhwu r0, r4, r0
    subf r3, r5, r3
    slwi r3, r3, 3
    srwi r0, r0, 15
    divwu r0, r3, r0
    stw r0, 0x2c(r30)
    lwz r0, 0x2c(r30)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_800E57AC
    li r0, 0x1
    stw r0, 0x2c(r30)
L_800E57AC:
    lbz r0, 0x40(r31)
    cmplwi r0, 0x0
    opword  0x418200F8  // beq .L_800E58AC
    opword  0x83CD8DA8  // lwz r30, lbl_8053A968@sda21(r0)
    li r4, 0xff
    li r3, 0x81
    li r0, 0x1e
    stb r4, 0x4c(r30)
    stb r3, 0x4d(r30)
    stb r0, 0x4e(r30)
    bl OSGetTick
    stw r3, 0x3c(r30)
    opword  0x806D8DD8  // lwz r3, lbl_8053A998@sda21(r0)
    lwz r0, 0x10(r3)
    cmpwi r0, 0x2
    opword  0x41820018  // beq .L_800E5800
    opword  0x40800008  // bge .L_800E57F4
    opword  0x48000024  // b .L_800E5814
L_800E57F4:
    cmpwi r0, 0x4
    opword  0x4080001C  // bge .L_800E5814
    opword  0x48000010  // b .L_800E580C
L_800E5800:
    bl fn_800E6224
    bl fn_8005BA0C
    opword  0x4800000C  // b .L_800E5814
L_800E580C:
    bl fn_800E6224
    bl fn_8005BA0C
L_800E5814:
    opword  0x83CD8DA8  // lwz r30, lbl_8053A968@sda21(r0)
    bl OSGetTick
    lis r5, 0x8000
    lis r4, 0x431c
    lwz r0, 0xf8(r5)
    subi r4, r4, 0x217d
    lwz r5, 0x3c(r30)
    srwi r0, r0, 2
    mulhwu r0, r4, r0
    subf r3, r5, r3
    slwi r3, r3, 3
    srwi r0, r0, 15
    divwu r0, r3, r0
    stw r0, 0x40(r30)
    lwz r0, 0x40(r30)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_800E5860
    li r0, 0x1
    stw r0, 0x40(r30)
L_800E5860:
    opword  0x83CD8DA8  // lwz r30, lbl_8053A968@sda21(r0)
    bl OSGetTick
    lis r5, 0x8000
    lis r4, 0x431c
    lwz r0, 0xf8(r5)
    subi r4, r4, 0x217d
    lwz r5, 0x14(r30)
    srwi r0, r0, 2
    mulhwu r0, r4, r0
    subf r3, r5, r3
    slwi r3, r3, 3
    srwi r0, r0, 15
    divwu r0, r3, r0
    stw r0, 0x18(r30)
    lwz r0, 0x18(r30)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_800E58AC
    li r0, 0x1
    stw r0, 0x18(r30)
L_800E58AC:
    lbz r0, 0x40(r31)
    cmplwi r0, 0x0
    opword  0x41820038  // beq .L_800E58EC
    opword  0x880D8E90  // lbz r0, lbl_8053AA50@sda21(r0)
    extsb. r0, r0
    opword  0x40820014  // bne .L_800E58D4
    bl fn_8004D140
    li r0, 0x1
    opword  0x906D8E8C  // stw r3, lbl_8053AA4C@sda21(r0)
    opword  0x980D8E90  // stb r0, lbl_8053AA50@sda21(r0)
L_800E58D4:
    bl fn_8004D140
    opword  0x800D8E8C  // lwz r0, lbl_8053AA4C@sda21(r0)
    opword  0x808D8DA8  // lwz r4, lbl_8053A968@sda21(r0)
    subf r0, r0, r3
    stw r0, 0x104(r4)
    opword  0x906D8E8C  // stw r3, lbl_8053AA4C@sda21(r0)
L_800E58EC:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E5904(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    opword  0x48000010  // b .L_800E5930
L_800E5924:
    lwz r3, 0x20(r30)
    lhz r4, 0x1c(r30)
    bl fn_800E5954
L_800E5930:
    cmpwi r31, 0x0
    subi r31, r31, 0x1
    opword  0x4181FFEC  // bgt .L_800E5924
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E5954(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr. r31, r3
    stw r30, 0x18(r1)
    mr r30, r4
    opword  0x41820084  // beq .L_800E59F4
    opword  0x880D8EA0  // lbz r0, lbl_8053AA60@sda21(r0)
    extsb. r0, r0
    opword  0x40820018  // bne .L_800E5994
    bl OSGetTime
    li r0, 0x1
    opword  0x908D8E9C  // stw r4, lbl_8053AA5C@sda21(r0)
    opword  0x906D8E98  // stw r3, lbl_8053AA58@sda21(r0)
    opword  0x980D8EA0  // stb r0, lbl_8053AA60@sda21(r0)
L_800E5994:
    bl OSGetTime
    mr r8, r3
    opword  0x4800001C  // b .L_800E59B8
L_800E59A0:
    subfc r6, r4, r6
    opword  0x806D8E88  // lwz r3, lbl_8053AA48@sda21(r0)
    subfe r5, r8, r7
    bl fn_800E5AB4
    bl OSGetTime
    mr r8, r3
L_800E59B8:
    opword  0x80ED8E98  // lwz r7, lbl_8053AA58@sda21(r0)
    xoris r5, r8, 0x8000
    opword  0x80CD8E9C  // lwz r6, lbl_8053AA5C@sda21(r0)
    xoris r3, r7, 0x8000
    subfc r0, r6, r4
    subfe r3, r3, r5
    subfe r3, r5, r5
    neg. r3, r3
    opword  0x4082FFC8  // bne .L_800E59A0
    addc r3, r4, r31
    li r0, 0x0
    adde r0, r8, r0
    opword  0x906D8E9C  // stw r3, lbl_8053AA5C@sda21(r0)
    opword  0x900D8E98  // stw r0, lbl_8053AA58@sda21(r0)
    opword  0x4800006C  // b .L_800E5A5C
L_800E59F4:
    opword  0x880D8EA8  // lbz r0, lbl_8053AA68@sda21(r0)
    extsb. r0, r0
    opword  0x40820014  // bne .L_800E5A10
    bl fn_8004D140
    li r0, 0x1
    opword  0x906D8EA4  // stw r3, lbl_8053AA64@sda21(r0)
    opword  0x980D8EA8  // stb r0, lbl_8053AA68@sda21(r0)
L_800E5A10:
    clrlwi. r0, r30, 16
    li r30, 0x1
    opword  0x41820008  // beq .L_800E5A20
    mr r30, r0
L_800E5A20:
    li r31, 0x0
L_800E5A24:
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    addi r4, r1, 0x8
    li r5, 0x1
    addi r3, r3, 0x38
    bl OSReceiveMessage
    cmpwi r3, 0x0
    opword  0x40820008  // bne .L_800E5A44
    stw r31, 0x8(r1)
L_800E5A44:
    opword  0x800D8EA4  // lwz r0, lbl_8053AA64@sda21(r0)
    lwz r3, 0x8(r1)
    subf. r0, r0, r3
    opword  0x4180FFD4  // blt .L_800E5A24
    add r0, r3, r30
    opword  0x900D8EA4  // stw r0, lbl_8053AA64@sda21(r0)
L_800E5A5C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800E5A74(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, lbl_80539BA0@ha
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    addi r3, r4, lbl_80539BA0@l
    addi r4, r31, 0x2c
    bl fn_80087298
    lwz r3, 0x28(r31)
    bl OSResumeThread
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E5AB4(void)
{
    nofralloc
    stwu r1, -0x60(r1)
    mflr r0
    stw r0, 0x64(r1)
    addi r4, r1, 0x8
    stw r31, 0x5c(r1)
    addi r31, r1, 0x34
    mr r3, r31
    stw r30, 0x58(r1)
    stw r29, 0x54(r1)
    mr r29, r5
    stw r28, 0x50(r1)
    mr r28, r6
    bl fn_80086E2C
    addi r3, r1, 0x8
    bl OSCreateAlarm
    bl OSGetCurrentThread
    stw r3, 0x30(r1)
    bl OSDisableInterrupts
    lis r4, lbl_80539BA0@ha
    mr r30, r3
    addi r0, r4, lbl_80539BA0@l
    mr r4, r31
    mr r3, r0
    bl fn_80086F58
    lis r3, fn_800E5A74@ha
    mr r6, r28
    addi r7, r3, fn_800E5A74@l
    mr r5, r29
    addi r3, r1, 0x8
    bl OSSetAlarm
    lwz r3, 0x30(r1)
    bl OSSuspendThread
    mr r3, r30
    bl OSRestoreInterrupts
    cmplwi r31, 0x0
    opword  0x41820010  // beq .L_800E5B50
    mr r3, r31
    li r4, 0x0
    bl fn_80086E44
L_800E5B50:
    lwz r0, 0x64(r1)
    lwz r31, 0x5c(r1)
    lwz r30, 0x58(r1)
    lwz r29, 0x54(r1)
    lwz r28, 0x50(r1)
    mtlr r0
    addi r1, r1, 0x60
    blr
}

ASM void fn_800E5B70(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, lbl_804BA5D4@ha
    lis r4, lbl_8049BE60@ha
    stw r0, 0x14(r1)
    addi r3, r3, lbl_804BA5D4@l
    li r5, 0x4
    addi r4, r4, lbl_8049BE60@l
    li r6, 0x4
    li r7, 0x16
    li r8, 0x1
    li r9, 0x1
    li r10, 0x0
    bl fn_8005D6E0
    opword  0xC0228D60  // lfs f1, lbl_8053BD00@sda21(r0)
    lis r3, lbl_804BA5D4@ha
    addi r3, r3, lbl_804BA5D4@l
    li r4, 0x0
    fmr fp2, fp1
    li r5, 0x0
    fmr fp3, fp1
    li r6, 0x0
    li r7, 0x0
    li r8, 0x0
    bl fn_8005D974
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E5BE4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    addi r4, r1, 0x8
    lwz r0, 0x8(r3)
    stw r0, 0x8(r1)
    bl fn_800E5C10
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E5C10(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    addi r8, r1, 0x8
    lwz r0, 0x0(r4)
    li r4, 0x0
    opword  0x80AD8DC0  // lwz r5, lbl_8053A980@sda21(r0)
    lwz r7, 0x4(r5)
    li r5, 0x0
    lhz r6, 0x4(r7)
    lhz r7, 0x6(r7)
    stw r0, 0x8(r1)
    bl fn_800E5C54
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E5C54(void)
{
    nofralloc
    stwu r1, -0x90(r1)
    mflr r0
    opword  0xC0228D60  // lfs f1, lbl_8053BD00@sda21(r0)
    stw r0, 0x94(r1)
    lis r0, 0x4330
    opword  0xC8828D70  // lfd f4, lbl_8053BD10@sda21(r0)
    fmr fp3, fp1
    stmw r24, 0x70(r1)
    mr r28, r3
    fmr fp5, fp1
    opword  0xC0C28D68  // lfs f6, lbl_8053BD08@sda21(r0)
    stw r0, 0x50(r1)
    mr r29, r4
    mr r30, r5
    stw r0, 0x58(r1)
    mr r24, r6
    mr r25, r7
    mr r31, r8
    opword  0x812D8DC0  // lwz r9, lbl_8053A980@sda21(r0)
    lwz r3, 0x4(r9)
    lhz r27, 0x4(r3)
    lhz r26, 0x6(r3)
    addi r3, r1, 0xc
    stw r27, 0x5c(r1)
    stw r26, 0x54(r1)
    lfd fp0, 0x58(r1)
    lfd fp2, 0x50(r1)
    fsubs fp2, fp2, fp4
    fsubs fp4, fp0, fp4
    bl PSMTXLightFrustum
    addi r3, r1, 0xc
    li r4, 0x1
    bl fn_8005FCC4
    lis r0, 0x4330
    opword  0xC0228D60  // lfs f1, lbl_8053BD00@sda21(r0)
    stw r27, 0x64(r1)
    opword  0xC8828D70  // lfd f4, lbl_8053BD10@sda21(r0)
    fmr fp2, fp1
    stw r0, 0x60(r1)
    fmr fp5, fp1
    opword  0xC0C28D68  // lfs f6, lbl_8053BD08@sda21(r0)
    lfd fp0, 0x60(r1)
    stw r26, 0x6c(r1)
    fsubs fp3, fp0, fp4
    stw r0, 0x68(r1)
    lfd fp0, 0x68(r1)
    fsubs fp4, fp0, fp4
    bl fn_8006000C
    mr r5, r27
    mr r6, r26
    li r3, 0x0
    li r4, 0x0
    bl fn_800600C0
    lis r3, lbl_8049BE20@ha
    li r4, 0x0
    addi r3, r3, lbl_8049BE20@l
    bl fn_8005FDF4
    li r3, 0x0
    bl fn_8005FE94
    bl fn_8005AD7C
    li r3, 0x9
    li r4, 0x1
    bl fn_8005A464
    li r3, 0xd
    li r4, 0x1
    bl fn_8005A464
    li r3, 0x0
    li r4, 0x9
    li r5, 0x0
    li r6, 0x2
    li r7, 0x0
    bl fn_8005ADB4
    li r3, 0x0
    li r4, 0xd
    li r5, 0x1
    li r6, 0x0
    li r7, 0x0
    bl fn_8005ADB4
    li r3, 0x0
    bl fn_8005D3C8
    li r3, 0x4
    li r4, 0x0
    li r5, 0x0
    li r6, 0x0
    li r7, 0x0
    li r8, 0x0
    li r9, 0x2
    bl fn_8005D404
    li r3, 0x5
    li r4, 0x0
    li r5, 0x0
    li r6, 0x0
    li r7, 0x0
    li r8, 0x0
    li r9, 0x2
    bl fn_8005D404
    li r3, 0x1
    bl fn_8005B93C
    li r3, 0x0
    li r4, 0x1
    li r5, 0x4
    li r6, 0x3c
    li r7, 0x0
    li r8, 0x7d
    bl fn_8005B6BC
    lis r3, lbl_804BA5D4@ha
    li r4, 0x0
    addi r3, r3, lbl_804BA5D4@l
    bl fn_8005DC74
    li r3, 0x1
    bl fn_8005F11C
    lwz r0, 0x0(r31)
    addi r4, r1, 0x8
    li r3, 0x1
    stw r0, 0x8(r1)
    bl fn_8005EBC4
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    li r6, 0xff
    bl fn_8005EF80
    li r3, 0x0
    li r4, 0xf
    li r5, 0xf
    li r6, 0xf
    li r7, 0x2
    bl fn_8005EA6C
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    li r6, 0x0
    li r7, 0x1
    li r8, 0x0
    bl fn_8005EAF4
    li r3, 0x0
    li r4, 0x7
    li r5, 0x7
    li r6, 0x7
    li r7, 0x1
    bl fn_8005EAB0
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    li r6, 0x0
    li r7, 0x1
    li r8, 0x0
    bl fn_8005EB5C
    li r3, 0x7
    li r4, 0x0
    li r5, 0x1
    li r6, 0x7
    li r7, 0x0
    bl fn_8005EEB0
    li r3, 0x2
    li r4, 0x16
    li r5, 0x0
    bl fn_8005EEF4
    li r3, 0x0
    bl fn_8005F56C
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    li r6, 0x5
    bl fn_8005F48C
    lbz r0, 0x24(r28)
    cmplwi r0, 0x0
    opword  0x41820018  // beq .L_800E5F04
    li r3, 0x1
    bl fn_8005F50C
    lbz r4, 0x3(r31)
    li r3, 0x1
    bl fn_8005F6A0
L_800E5F04:
    li r3, 0x1
    li r4, 0x7
    li r5, 0x1
    bl fn_8005F538
    li r3, 0x2
    bl fn_8005C46C
    li r3, 0x80
    li r4, 0x0
    li r5, 0x4
    bl fn_8005C24C
    lis r7, 0xcc01
    li r6, 0x0
    sth r29, -0x8000(r7)
    add r8, r29, r24
    li r0, 0x1
    add r9, r30, r25
    sth r30, -0x8000(r7)
    li r3, 0x0
    li r4, 0x16
    li r5, 0x0
    stb r6, -0x8000(r7)
    stb r6, -0x8000(r7)
    sth r8, -0x8000(r7)
    sth r30, -0x8000(r7)
    stb r0, -0x8000(r7)
    stb r6, -0x8000(r7)
    sth r8, -0x8000(r7)
    sth r9, -0x8000(r7)
    stb r0, -0x8000(r7)
    stb r0, -0x8000(r7)
    sth r29, -0x8000(r7)
    sth r9, -0x8000(r7)
    stb r6, -0x8000(r7)
    stb r0, -0x8000(r7)
    bl fn_8005EEF4
    li r3, 0x1
    bl fn_8005F56C
    lbz r0, 0x24(r28)
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_800E5FB0
    lbz r4, 0x3(r31)
    li r3, 0x0
    bl fn_8005F6A0
L_800E5FB0:
    lmw r24, 0x70(r1)
    lwz r0, 0x94(r1)
    mtlr r0
    addi r1, r1, 0x90
    blr
}

ASM void fn_800E5FC4(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    stfd fp31, 0x28(r1)
    stw r31, 0x24(r1)
    mr r31, r3
    stw r30, 0x20(r1)
    stw r29, 0x1c(r1)
    stw r28, 0x18(r1)
    opword  0x808D8DC0  // lwz r4, lbl_8053A980@sda21(r0)
    lwz r3, 0x4(r4)
    lhz r28, 0x6(r3)
    lhz r29, 0x4(r3)
    lhz r4, 0x8(r3)
    mr r3, r28
    bl fn_8005C870
    fmr fp31, fp1
    mr r3, r28
    bl fn_8005C7E0
    lwz r0, 0x8(r31)
    mr r30, r3
    addi r3, r1, 0xc
    stw r0, 0xc(r1)
    lwz r4, 0xc(r31)
    bl fn_8005CB74
    mr r5, r29
    mr r6, r28
    li r3, 0x0
    li r4, 0x0
    bl fn_8005C508
    mr r3, r29
    mr r4, r30
    bl fn_8005C600
    fmr fp1, fp31
    bl fn_8005CAA8
    bl fn_8004CF18
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    li r5, 0x1
    lwz r4, 0x4(r3)
    lbz r3, 0x19(r4)
    addi r6, r4, 0x32
    addi r4, r4, 0x1a
    bl fn_8005CBEC
    lhz r3, 0x26(r31)
    bl fn_8005C788
    lhz r3, 0x14(r31)
    bl fn_8005CDF4
    li r3, 0x1
    li r4, 0x3
    li r5, 0x1
    bl fn_8005F538
    lbz r0, 0x24(r31)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_800E60A4
    li r3, 0x1
    bl fn_8005F50C
L_800E60A4:
    opword  0x808D8DC0  // lwz r4, lbl_8053A980@sda21(r0)
    mr r3, r31
    lwz r0, 0x8(r31)
    addi r8, r1, 0x8
    lwz r7, 0x4(r4)
    li r4, 0x0
    li r5, 0x0
    lhz r6, 0x4(r7)
    lhz r7, 0x6(r7)
    stw r0, 0x8(r1)
    bl fn_800E5C54
    bl fn_8005DEC4
    bl fn_8005B6AC
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    lwz r3, 0x4(r3)
    lbz r0, 0x19(r3)
    cmplwi r0, 0x0
    opword  0x4182001C  // beq .L_800E6104
    li r3, 0x2
    li r4, 0x0
    bl fn_8005F5A0
    li r3, 0x1
    bl fn_8005F674
    opword  0x4800003C  // b .L_800E613C
L_800E6104:
    lbz r0, 0x24(r31)
    cmplwi r0, 0x0
    opword  0x4182001C  // beq .L_800E6128
    li r3, 0x1
    li r4, 0x0
    bl fn_8005F5A0
    li r3, 0x1
    bl fn_8005F674
    opword  0x48000018  // b .L_800E613C
L_800E6128:
    li r3, 0x0
    li r4, 0x0
    bl fn_8005F5A0
    li r3, 0x0
    bl fn_8005F674
L_800E613C:
    opword  0x806D8DD8  // lwz r3, lbl_8053A998@sda21(r0)
    li r30, 0x0
    li r29, 0x0
    lwz r28, 0x10(r3)
    opword  0x48000020  // b .L_800E616C
L_800E6150:
    opword  0x806D8DD8  // lwz r3, lbl_8053A998@sda21(r0)
    li r4, 0x1
    lwzx r3, r3, r29
    bl fn_8005CE08
    bl fn_800E6224
    addi r29, r29, 0x4
    addi r30, r30, 0x1
L_800E616C:
    cmpw r30, r28
    opword  0x4180FFE0  // blt .L_800E6150
    lwz r0, 0x34(r1)
    lfd fp31, 0x28(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    lwz r28, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_800E6198(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    opword  0x80AD8DC8  // lwz r5, lbl_8053A988@sda21(r0)
    lwz r6, 0x30(r3)
    mr r7, r5
    slwi r0, r6, 1
    opword  0x48000008  // b .L_800E61B4
L_800E61B0:
    add r7, r7, r5
L_800E61B4:
    cmpw r7, r0
    opword  0x4180FFF8  // blt .L_800E61B0
    lwz r4, 0x34(r3)
    subf r0, r0, r7
    subf. r4, r4, r0
    opword  0x40800008  // bge .L_800E61D0
    add r4, r4, r5
L_800E61D0:
    lis r0, 0x4330
    xoris r4, r4, 0x8000
    stw r4, 0xc(r1)
    opword  0xC8228D78  // lfd f1, lbl_8053BD18@sda21(r0)
    stw r0, 0x8(r1)
    opword  0xC8428D70  // lfd f2, lbl_8053BD10@sda21(r0)
    lfd fp0, 0x8(r1)
    stw r6, 0x14(r1)
    fsubs fp3, fp0, fp1
    opword  0xC0028D68  // lfs f0, lbl_8053BD08@sda21(r0)
    stw r0, 0x10(r1)
    lfd fp1, 0x10(r1)
    fsubs fp1, fp1, fp2
    fdivs fp1, fp3, fp1
    stfs fp1, 0x28(r3)
    lfs fp1, 0x28(r3)
    fcmpo cr0, fp1, fp0
    opword  0x40810008  // ble .L_800E621C
    stfs fp0, 0x28(r3)
L_800E621C:
    addi r1, r1, 0x20
    blr
}

ASM void fn_800E6224(void)
{
    nofralloc
    stwu r1, -0x60(r1)
    mflr r0
    stw r0, 0x64(r1)
    addi r4, r1, 0x8
    stw r31, 0x5c(r1)
    addi r31, r1, 0x34
    mr r3, r31
    stw r30, 0x58(r1)
    bl fn_80086E2C
    bl OSDisableInterrupts
    mr r0, r3
    addi r3, r1, 0x8
    mr r30, r0
    bl OSCreateAlarm
    lis r3, lbl_80539BA0@ha
    mr r4, r31
    addi r3, r3, lbl_80539BA0@l
    bl fn_80086F58
    mr r3, r30
    bl OSRestoreInterrupts
    lis r3, 0x8000
    lis r0, 0x4330
    lwz r3, 0xf8(r3)
    stw r0, 0x48(r1)
    srwi r0, r3, 2
    opword  0xC8228D70  // lfd f1, lbl_8053BD10@sda21(r0)
    stw r0, 0x4c(r1)
    opword  0xC8428D80  // lfd f2, lbl_8053BD20@sda21(r0)
    lfd fp0, 0x48(r1)
    fsub fp0, fp0, fp1
    fmul fp1, fp2, fp0
    bl __cvt_dbl_usll
    lis r6, fn_800E6314@ha
    mr r5, r3
    addi r7, r6, fn_800E6314@l
    addi r3, r1, 0x8
    mr r6, r4
    bl OSSetAlarm
    bl fn_8005BDDC
    bl OSDisableInterrupts
    mr r30, r3
    addi r3, r1, 0x8
    bl fn_8004061C
    lis r3, lbl_80539BA0@ha
    mr r4, r31
    addi r3, r3, lbl_80539BA0@l
    bl fn_80087298
    mr r3, r30
    bl OSRestoreInterrupts
    cmplwi r31, 0x0
    opword  0x41820010  // beq .L_800E62FC
    mr r3, r31
    li r4, 0x0
    bl fn_80086E44
L_800E62FC:
    lwz r0, 0x64(r1)
    lwz r31, 0x5c(r1)
    lwz r30, 0x58(r1)
    mtlr r0
    addi r1, r1, 0x60
    blr
}

ASM void fn_800E6314(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    bl fn_800E633C
    bl fn_8005BBD4
    bl fn_8005BD44
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800E633C(void)
{
    nofralloc
    stwu r1, -0x50(r1)
    mflr r0
    lis r4, lbl_80463588@ha
    stw r0, 0x54(r1)
    addi r3, r1, 0x24
    addi r5, r1, 0x1c
    addi r6, r1, 0x20
    stmw r27, 0x3c(r1)
    addi r31, r4, lbl_80463588@l
    addi r4, r1, 0x28
    bl fn_80060AC4
    addi r3, r1, 0x14
    addi r4, r1, 0x18
    addi r5, r1, 0xc
    addi r6, r1, 0x10
    bl fn_80060AC4
    lwz r8, 0x20(r1)
    addi r3, r1, 0x8
    lwz r6, 0x10(r1)
    mr r4, r3
    lwz r10, 0x28(r1)
    mr r7, r3
    subf r8, r8, r6
    lwz r9, 0x18(r1)
    neg r6, r8
    lwz r5, 0x1c(r1)
    lwz r0, 0xc(r1)
    or r6, r6, r8
    subf r8, r10, r9
    lwz r9, 0x24(r1)
    cntlzw r10, r8
    subf r5, r5, r0
    neg r0, r5
    lwz r8, 0x14(r1)
    or r0, r0, r5
    srwi r5, r6, 31
    subf r6, r9, r8
    extrwi r30, r10, 8, 19
    cntlzw r6, r6
    srwi r0, r0, 31
    mr r28, r5
    addi r5, r1, 0xa
    extrwi r29, r6, 8, 19
    mr r27, r0
    addi r6, r1, 0x9
    bl fn_8005A144
    lbz r4, 0xa(r1)
    mr r6, r30
    lbz r5, 0x9(r1)
    mr r7, r29
    mr r8, r28
    mr r9, r27
    addi r3, r31, 0x0
    crclr 6
    bl OSReport
    cmplwi r29, 0x0
    opword  0x4082001C  // bne .L_800E6438
    cmplwi r28, 0x0
    opword  0x41820014  // beq .L_800E6438
    addi r3, r31, 0x1c
    crclr 6
    bl OSReport
    opword  0x480000B0  // b .L_800E64E4
L_800E6438:
    cmplwi r30, 0x0
    opword  0x40820024  // bne .L_800E6460
    cmplwi r29, 0x0
    opword  0x4182001C  // beq .L_800E6460
    cmplwi r28, 0x0
    opword  0x41820014  // beq .L_800E6460
    addi r3, r31, 0x3c
    crclr 6
    bl OSReport
    opword  0x48000088  // b .L_800E64E4
L_800E6460:
    lbz r3, 0x9(r1)
    cmplwi r3, 0x0
    opword  0x4082002C  // bne .L_800E6494
    cmplwi r30, 0x0
    opword  0x41820024  // beq .L_800E6494
    cmplwi r29, 0x0
    opword  0x4182001C  // beq .L_800E6494
    cmplwi r28, 0x0
    opword  0x41820014  // beq .L_800E6494
    addi r3, r31, 0x64
    crclr 6
    bl OSReport
    opword  0x48000054  // b .L_800E64E4
L_800E6494:
    lbz r0, 0xa(r1)
    cmplwi r0, 0x0
    opword  0x4182003C  // beq .L_800E64D8
    cmplwi r3, 0x0
    opword  0x41820034  // beq .L_800E64D8
    cmplwi r30, 0x0
    opword  0x4182002C  // beq .L_800E64D8
    cmplwi r29, 0x0
    opword  0x41820024  // beq .L_800E64D8
    cmplwi r28, 0x0
    opword  0x4182001C  // beq .L_800E64D8
    cmplwi r27, 0x0
    opword  0x41820014  // beq .L_800E64D8
    addi r3, r31, 0x8c
    crclr 6
    bl OSReport
    opword  0x48000010  // b .L_800E64E4
L_800E64D8:
    addi r3, r31, 0xbc
    crclr 6
    bl OSReport
L_800E64E4:
    lmw r27, 0x3c(r1)
    lwz r0, 0x54(r1)
    mtlr r0
    addi r1, r1, 0x50
    blr
}

