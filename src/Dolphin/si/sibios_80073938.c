#include "types.h"
#include "Dolphin/os.h"
#include "Dolphin/exi.h"
#include "Dolphin/si.h"
#include "Dolphin/vi.h"

extern void fn_8004061C(void);
extern void fn_8004D288(void);

extern s32 fn_80073C20(void);
extern s32 fn_80074260(void);
extern s32 fn_8007456C(void);
extern s32 fn_80074778(void);
extern s32 fn_8007498C(void);
extern s32 fn_800752B4(void);
extern void GetTypeCallback(void);
extern char* __SIVersion;

char lbl_804983E0[0x44] = "<< Dolphin SDK - SI\trelease build: Apr 17 2003 12:33:19 (0x2301) >>";

u8 Si_80498424[0x14] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00
};

u8 Type_80498438[0xF0] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08,
    0x4E, 0x6F, 0x20, 0x72, 0x65, 0x73, 0x70, 0x6F, 0x6E, 0x73, 0x65, 0x00, 0x4E, 0x36, 0x34, 0x20,
    0x63, 0x6F, 0x6E, 0x74, 0x72, 0x6F, 0x6C, 0x6C, 0x65, 0x72, 0x00, 0x00, 0x4E, 0x36, 0x34, 0x20,
    0x6D, 0x69, 0x63, 0x72, 0x6F, 0x70, 0x68, 0x6F, 0x6E, 0x65, 0x00, 0x00, 0x4E, 0x36, 0x34, 0x20,
    0x6B, 0x65, 0x79, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x00, 0x00, 0x00, 0x00, 0x4E, 0x36, 0x34, 0x20,
    0x6D, 0x6F, 0x75, 0x73, 0x65, 0x00, 0x00, 0x00, 0x47, 0x61, 0x6D, 0x65, 0x42, 0x6F, 0x79, 0x20,
    0x41, 0x64, 0x76, 0x61, 0x6E, 0x63, 0x65, 0x00, 0x53, 0x74, 0x61, 0x6E, 0x64, 0x61, 0x72, 0x64,
    0x20, 0x63, 0x6F, 0x6E, 0x74, 0x72, 0x6F, 0x6C, 0x6C, 0x65, 0x72, 0x00, 0x57, 0x69, 0x72, 0x65,
    0x6C, 0x65, 0x73, 0x73, 0x20, 0x72, 0x65, 0x63, 0x65, 0x69, 0x76, 0x65, 0x72, 0x00, 0x00, 0x00,
    0x57, 0x61, 0x76, 0x65, 0x42, 0x69, 0x72, 0x64, 0x20, 0x63, 0x6F, 0x6E, 0x74, 0x72, 0x6F, 0x6C,
    0x6C, 0x65, 0x72, 0x00, 0x4B, 0x65, 0x79, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x00, 0x00, 0x00, 0x00,
    0x53, 0x74, 0x65, 0x65, 0x72, 0x69, 0x6E, 0x67, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0xF6, 0x02, 0x00, 0x00, 0x0F, 0x12, 0x00, 0x00, 0x1E, 0x09, 0x00, 0x00, 0x2C, 0x06, 0x00,
    0x00, 0x34, 0x05, 0x00, 0x00, 0x41, 0x04, 0x00, 0x00, 0x57, 0x03, 0x00, 0x00, 0x57, 0x03, 0x00,
    0x00, 0x57, 0x03, 0x00, 0x00, 0x83, 0x02, 0x00, 0x00, 0x83, 0x02, 0x00, 0x00, 0x83, 0x02, 0x00
};

u8 Packet_804B9898[0x208];

u8 lbl_8053A788[12];
u8 lbl_8053A77C[12];
u32 lbl_8053A778;
u32 lbl_8053A774;
u32 lbl_8053A770;

//80073938
ASM s32 fn_80073938(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    lwz r3, lbl_8053A77C
    addis r0, r3, 0x5a01
    cmplwi r0, 0x5a
    bne L_8007395C
    li r3, 0x0
    b L_80073998
L_8007395C:
    bl OSGetConsoleType
    rlwinm. r0, r3, 0, 3, 3
    bne L_80073978
    li r0, 0x0
    stw r0, lbl_8053A778
    li r3, 0x2
    b L_80073998
L_80073978:
    lis r3, 0xa5ff
    addi r0, r3, 0x5a
    li r3, 0x0
    stw r0, lbl_8053A778
    li r0, 0x1
    stw r3, lbl_8053A770
    li r3, 0x0
    stw r0, lbl_8053A774
L_80073998:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

//800739A8
ASM s32 fn_800739A8(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x38(r1)
    stmw r25, 0x1c(r1)
    addi r30, r3, 0x0
    addi r31, r4, 0x0
    lwz r5, lbl_8053A778
    addis r0, r5, 0x5a01
    cmplwi r0, 0x5a
    beq L_800739D8
    li r3, 0x2
    b L_80073BB0
L_800739D8:
    bl OSDisableInterrupts
    mr r0, r3
    lwz r3, lbl_8053A770
    lwz r4, lbl_8053A774
    mr r27, r0
    li r5, 0x0
    bl EXILock
    cmpwi r3, 0x0
    bne L_80073A0C
    mr r3, r27
    bl OSRestoreInterrupts
    li r3, 0x0
    b L_80073BB0
L_80073A0C:
    addi r4, r30, 0x0
    li r3, 0xd
    b L_80073A2C
L_80073A18:
    lbz r0, 0x0(r4)
    cmpwi r0, 0xa
    bne L_80073A28
    stb r3, 0x0(r4)
L_80073A28:
    addi r4, r4, 0x1
L_80073A2C:
    subf r0, r30, r4
    cmplw r0, r31
    blt L_80073A18
    lis r0, 0xa001
    stw r0, 0x14(r1)
    li r25, 0x0
    lis r29, 0x2001
    b L_80073B94
L_80073A4C:
    lwz r3, lbl_8053A770
    li r5, 0x3
    lwz r4, lbl_8053A774
    bl EXISelect
    cmpwi r3, 0x0
    bne L_80073A6C
    li r0, -0x1
    b L_80073AC4
L_80073A6C:
    stw r29, 0x10(r1)
    addi r4, r1, 0x10
    lwz r3, lbl_8053A770
    li r5, 0x4
    li r6, 0x1
    li r7, 0x0
    bl EXIImm
    lwz r3, lbl_8053A770
    bl EXISync
    lwz r3, lbl_8053A770
    addi r4, r1, 0x10
    li r5, 0x1
    li r6, 0x0
    li r7, 0x0
    bl EXIImm
    lwz r3, lbl_8053A770
    bl EXISync
    lwz r3, lbl_8053A770
    bl EXIDeselect
    lwz r0, 0x10(r1)
    srwi r0, r0, 24
    subfic r0, r0, 0x10
L_80073AC4:
    cmpwi r0, 0x0
    mr r26, r0
    bge L_80073AD8
    li r25, 0x3
    b L_80073B9C
L_80073AD8:
    cmpwi r0, 0xc
    bge L_80073AE8
    cmplw r0, r31
    blt L_80073B94
L_80073AE8:
    lwz r3, lbl_8053A770
    li r5, 0x3
    lwz r4, lbl_8053A774
    bl EXISelect
    cmpwi r3, 0x0
    bne L_80073B08
    li r25, 0x3
    b L_80073B9C
L_80073B08:
    lwz r3, lbl_8053A770
    addi r4, r1, 0x14
    li r5, 0x4
    li r6, 0x1
    li r7, 0x0
    bl EXIImm
    lwz r3, lbl_8053A770
    bl EXISync
    b L_80073B7C
L_80073B2C:
    cmpwi r26, 0x4
    bge L_80073B3C
    cmplw r26, r31
    blt L_80073B8C
L_80073B3C:
    cmplwi r31, 0x4
    bge L_80073B4C
    mr r28, r31
    b L_80073B50
L_80073B4C:
    li r28, 0x4
L_80073B50:
    lwz r3, lbl_8053A770
    mr r5, r28
    addi r4, r30, 0x0
    li r6, 0x1
    li r7, 0x0
    bl EXIImm
    lwz r3, lbl_8053A770
    add r30, r30, r28
    subf r31, r28, r31
    subf r26, r28, r26
    bl EXISync
L_80073B7C:
    cmpwi r26, 0x0
    beq L_80073B8C
    cmplwi r31, 0x0
    bne L_80073B2C
L_80073B8C:
    lwz r3, lbl_8053A770
    bl EXIDeselect
L_80073B94:
    cmplwi r31, 0x0
    bne L_80073A4C
L_80073B9C:
    lwz r3, lbl_8053A770
    bl EXIUnlock
    mr r3, r27
    bl OSRestoreInterrupts
    mr r3, r25
L_80073BB0:
    lmw r25, 0x1c(r1)
    lwz r0, 0x3c(r1)
    addi r1, r1, 0x38
    mtlr r0
    blr
}

//80073BC4
ASM s32 fn_80073BC4(void)
{
    nofralloc
    lis r3, Si_80498424@ha
    lwz r0, Si_80498424@l(r3)
    cmpwi r0, -0x1
    beq L_80073BDC
    li r3, 0x1
    blr
L_80073BDC:
    li r3, 0x0
    blr
}

//80073BE4
ASM void fn_80073BE4(s32 a)
{
    nofralloc
    lis r4, Packet_804B9898@ha
    slwi r5, r3, 5
    addi r0, r4, Packet_804B9898@l
    add r4, r0, r5
    lwz r0, 0x0(r4)
    li r5, 0x1
    cmpwi r0, -0x1
    bne L_80073C18
    lis r4, Si_80498424@ha
    lwz r0, Si_80498424@l(r4)
    cmpw r0, r3
    beq L_80073C18
    li r5, 0x0
L_80073C18:
    mr r3, r5
    blr
}

//80073C20
ASM s32 fn_80073C20(void)
{
    nofralloc
    mflr r0
    lis r3, 0xcc00
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    addi r30, r3, 0x6400
    stw r29, 0x14(r1)
    addi r29, r30, 0x34
    stw r28, 0x10(r1)
    lwz r0, 0x6434(r3)
    lwz r28, 0x6438(r3)
    lis r3, lbl_804983E0@ha
    oris r0, r0, 0x8000
    clrrwi r0, r0, 1
    stw r0, 0x34(r30)
    addi r31, r3, lbl_804983E0@l
    lwz r0, 0x44(r31)
    cmpwi r0, -0x1
    beq L_80073EE0
    bl __OSGetSystemTime
    lwz r6, 0x44(r31)
    lis r5, Packet_804B9898+0x140@ha
    addi r0, r5, Packet_804B9898+0x140@l
    slwi r5, r6, 3
    add r5, r0, r5
    stw r4, 0x4(r5)
    addi r6, r31, 0x4c
    li r4, 0x0
    stw r3, 0x0(r5)
    lwz r0, 0x4c(r31)
    lwz r5, 0x50(r31)
    srwi r7, r0, 2
    cmplwi r7, 0x0
    ble L_80073D48
    cmplwi r7, 0x8
    subi r3, r7, 0x8
    ble L_80073EE8
    addi r0, r3, 0x7
    srwi r0, r0, 3
    cmplwi r3, 0x0
    mtctr r0
    ble L_80073EE8
L_80073CCC:
    lwz r0, 0x80(r30)
    addi r4, r4, 0x8
    stw r0, 0x0(r5)
    lwz r0, 0x84(r30)
    stw r0, 0x4(r5)
    lwz r0, 0x88(r30)
    stw r0, 0x8(r5)
    lwz r0, 0x8c(r30)
    stw r0, 0xc(r5)
    lwz r0, 0x90(r30)
    stw r0, 0x10(r5)
    lwz r0, 0x94(r30)
    stw r0, 0x14(r5)
    lwz r0, 0x98(r30)
    stw r0, 0x18(r5)
    lwz r0, 0x9c(r30)
    addi r30, r30, 0x20
    stw r0, 0x1c(r5)
    addi r5, r5, 0x20
    bdnz L_80073CCC
    b L_80073EE8
L_80073D20:
    subf r0, r4, r7
    cmplw r4, r7
    mtctr r0
    bge L_80073D48
L_80073D30:
    lwz r0, 0x80(r3)
    addi r3, r3, 0x4
    addi r4, r4, 0x1
    stw r0, 0x0(r5)
    addi r5, r5, 0x4
    bdnz L_80073D30
L_80073D48:
    lwz r0, 0x0(r6)
    clrlwi. r3, r0, 30
    beq L_80073E60
    lis r6, 0xcc00
    addi r6, r6, 0x6400
    slwi r0, r4, 2
    add r4, r6, r0
    lwz r6, 0x80(r4)
    li r4, 0x0
    ble L_80073E60
    cmplwi r3, 0x8
    subi r7, r3, 0x8
    ble L_80073E34
    addi r0, r7, 0x7
    srwi r0, r0, 3
    cmplwi r7, 0x0
    mtctr r0
    ble L_80073E34
L_80073D90:
    subfic r0, r4, 0x3
    slwi r7, r0, 3
    addi r0, r4, 0x1
    srw r7, r6, r7
    subfic r0, r0, 0x3
    stb r7, 0x0(r5)
    slwi r0, r0, 3
    addi r7, r4, 0x2
    srw r0, r6, r0
    subfic r7, r7, 0x3
    stb r0, 0x1(r5)
    slwi r7, r7, 3
    srw r12, r6, r7
    neg r7, r4
    stb r12, 0x2(r5)
    slwi r8, r7, 3
    addi r7, r4, 0x4
    srw r11, r6, r8
    subfic r7, r7, 0x3
    stb r11, 0x3(r5)
    slwi r8, r7, 3
    addi r7, r4, 0x5
    srw r10, r6, r8
    subfic r7, r7, 0x3
    stb r10, 0x4(r5)
    slwi r8, r7, 3
    srw r9, r6, r8
    addi r7, r4, 0x6
    stb r9, 0x5(r5)
    subfic r8, r7, 0x3
    addi r7, r4, 0x7
    slwi r8, r8, 3
    srw r8, r6, r8
    subfic r7, r7, 0x3
    stb r8, 0x6(r5)
    slwi r7, r7, 3
    srw r7, r6, r7
    stb r7, 0x7(r5)
    addi r5, r5, 0x8
    addi r4, r4, 0x8
    bdnz L_80073D90
L_80073E34:
    subf r0, r4, r3
    cmplw r4, r3
    mtctr r0
    bge L_80073E60
L_80073E44:
    subfic r0, r4, 0x3
    slwi r0, r0, 3
    srw r0, r6, r0
    stb r0, 0x0(r5)
    addi r5, r5, 0x1
    addi r4, r4, 0x1
    bdnz L_80073E44
L_80073E60:
    lwz r0, 0x0(r29)
    rlwinm. r0, r0, 0, 2, 2
    beq L_80073EB4
    lwz r3, 0x44(r31)
    subfic r0, r3, 0x3
    slwi r0, r0, 3
    srw r28, r28, r0
    clrlwi r28, r28, 28
    rlwinm. r0, r28, 0, 28, 28
    beq L_80073EA4
    slwi r0, r3, 2
    add r3, r31, r0
    lwzu r0, 0x58(r3)
    rlwinm. r0, r0, 0, 24, 24
    bne L_80073EA4
    li r0, 0x8
    stw r0, 0x0(r3)
L_80073EA4:
    cmplwi r28, 0x0
    bne L_80073ED8
    li r28, 0x4
    b L_80073ED8
L_80073EB4:
    bl __OSGetSystemTime
    lwz r6, 0x44(r31)
    lis r5, Packet_804B9898+0x120@ha
    addi r0, r5, Packet_804B9898+0x120@l
    slwi r5, r6, 3
    add r5, r0, r5
    stw r4, 0x4(r5)
    li r28, 0x0
    stw r3, 0x0(r5)
L_80073ED8:
    li r0, -0x1
    stw r0, 0x44(r31)
L_80073EE0:
    mr r3, r28
    b L_80073EFC
L_80073EE8:
    lis r3, 0xcc00
    slwi r0, r4, 2
    addi r3, r3, 0x6400
    add r3, r3, r0
    b L_80073D20
L_80073EFC:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

//80073F1C
ASM void SIInterruptHandler(void)
{
    nofralloc
    mflr r0
    lis r5, 0xcc00
    stw r0, 0x4(r1)
    lis r7, Packet_804B9898@ha
    lis r6, lbl_804983E0@ha
    stwu r1, -0x48(r1)
    stmw r21, 0x1c(r1)
    addi r30, r3, 0x0
    addi r31, r4, 0x0
    addi r28, r7, Packet_804B9898@l
    addi r29, r6, lbl_804983E0@l
    lwz r24, 0x6434(r5)
    clrrwi r5, r24, 30
    addis r0, r5, 0x4000
    cmplwi r0, 0x0
    bne L_800740DC
    lwz r23, 0x44(r29)
    bl fn_80073C20
    lwz r21, 0x54(r29)
    li r27, 0x0
    addi r22, r3, 0x0
    stw r27, 0x54(r29)
    addi r26, r23, 0x0
L_80073F78:
    addi r26, r26, 0x1
    srawi r0, r26, 2
    addze r0, r0
    slwi r0, r0, 2
    subfc r0, r0, r26
    mr r26, r0
    slwi r0, r0, 5
    add r25, r28, r0
    lwz r0, 0x0(r25)
    cmpwi r0, -0x1
    beq L_8007400C
    bl __OSGetSystemTime
    lwz r0, 0x18(r25)
    xoris r5, r3, 0x8000
    lwz r6, 0x1c(r25)
    xoris r3, r0, 0x8000
    subfc r0, r6, r4
    subfe r3, r3, r5
    subfe r3, r5, r5
    neg. r3, r3
    bne L_8007400C
    lwz r3, 0x0(r25)
    lwz r4, 0x4(r25)
    lwz r5, 0x8(r25)
    lwz r6, 0xc(r25)
    lwz r7, 0x10(r25)
    lwz r8, 0x14(r25)
    bl fn_8007456C
    cmpwi r3, 0x0
    beq L_80074018
    mulli r0, r26, 0x28
    add r3, r28, r0
    addi r3, r3, 0x80
    bl fn_8004061C
    li r0, -0x1
    stw r0, 0x0(r25)
    b L_80074018
L_8007400C:
    addi r27, r27, 0x1
    cmpwi r27, 0x4
    blt L_80073F78
L_80074018:
    cmplwi r21, 0x0
    beq L_80074038
    addi r12, r21, 0x0
    mtlr r12
    addi r3, r23, 0x0
    addi r4, r22, 0x0
    addi r5, r31, 0x0
    blrl
L_80074038:
    lis r3, 0xcc00
    addi r4, r3, 0x6400
    lwz r5, 0x6438(r3)
    slwi r0, r23, 3
    lis r3, 0xf00
    sraw r0, r3, r0
    and r5, r5, r0
    slwi r0, r23, 2
    stw r5, 0x38(r4)
    add r6, r29, r0
    lwzu r0, 0x58(r6)
    cmplwi r0, 0x80
    bne L_800740DC
    slwi r0, r23, 5
    lwzx r0, r28, r0
    li r3, 0x1
    cmpwi r0, -0x1
    bne L_80074090
    lwz r0, 0x44(r29)
    cmpw r0, r23
    beq L_80074090
    li r3, 0x0
L_80074090:
    cmpwi r3, 0x0
    bne L_800740DC
    lis r3, 0x8000
    lwz r0, 0xf8(r3)
    lis r3, 0x431c
    lis r4, GetTypeCallback@ha
    srwi r0, r0, 2
    subi r3, r3, 0x217d
    mulhwu r0, r3, r0
    srwi r0, r0, 15
    mulli r0, r0, 0x41
    addi r8, r4, GetTypeCallback@l
    srwi r10, r0, 3
    addi r3, r23, 0x0
    opword 0x388D8BC0
    li r5, 0x1
    li r7, 0x3
    li r9, 0x0
    bl SITransfer
L_800740DC:
    rlwinm r3, r24, 0, 3, 4
    subis r0, r3, 0x1800
    cmplwi r0, 0x0
    bne L_8007424C
    bl fn_8004D288
    lwz r0, 0x48(r29)
    addi r23, r28, 0x1e0
    addi r24, r29, 0x48
    addi r22, r23, 0x0
    addi r21, r3, 0x1
    extrwi r26, r0, 10, 6
    li r25, 0x0
L_8007410C:
    mr r3, r25
    bl fn_8007498C
    cmpwi r3, 0x0
    beq L_80074120
    stw r21, 0x0(r22)
L_80074120:
    addi r25, r25, 0x1
    cmpwi r25, 0x4
    addi r22, r22, 0x4
    blt L_8007410C
    lwz r5, 0x0(r24)
    lis r3, 0x8000
    li r0, 0x18
    srw r0, r3, r0
    and. r0, r5, r0
    srwi r6, r26, 1
    beq L_8007416C
    lwz r0, 0x0(r23)
    cmplwi r0, 0x0
    beq L_8007424C
    lwz r0, 0x0(r23)
    add r0, r6, r0
    cmplw r0, r21
    bge L_8007416C
    b L_8007424C
L_8007416C:
    li r0, 0x19
    srw r0, r3, r0
    and. r0, r5, r0
    addi r4, r23, 0x4
    beq L_800741A0
    lwz r0, 0x0(r4)
    cmplwi r0, 0x0
    beq L_8007424C
    lwz r0, 0x0(r4)
    add r0, r6, r0
    cmplw r0, r21
    bge L_800741A0
    b L_8007424C
L_800741A0:
    li r0, 0x1a
    srw r0, r3, r0
    and. r0, r5, r0
    addi r4, r4, 0x4
    beq L_800741D4
    lwz r0, 0x0(r4)
    cmplwi r0, 0x0
    beq L_8007424C
    lwz r0, 0x0(r4)
    add r0, r6, r0
    cmplw r0, r21
    bge L_800741D4
    b L_8007424C
L_800741D4:
    li r0, 0x1b
    srw r0, r3, r0
    and. r0, r5, r0
    addi r4, r4, 0x4
    beq L_80074208
    lwz r0, 0x0(r4)
    cmplwi r0, 0x0
    beq L_8007424C
    lwz r0, 0x0(r4)
    add r0, r6, r0
    cmplw r0, r21
    bge L_80074208
    b L_8007424C
L_80074208:
    li r22, 0x0
    stw r22, 0x0(r23)
    addi r21, r28, 0x1a0
    stw r22, 0x1e4(r28)
    stw r22, 0x1e8(r28)
    stw r22, 0x1ec(r28)
L_80074220:
    lwz r12, 0x0(r21)
    cmplwi r12, 0x0
    beq L_8007423C
    mtlr r12
    addi r3, r30, 0x0
    addi r4, r31, 0x0
    blrl
L_8007423C:
    addi r22, r22, 0x1
    cmpwi r22, 0x4
    addi r21, r21, 0x4
    blt L_80074220
L_8007424C:
    lmw r21, 0x1c(r1)
    lwz r0, 0x4c(r1)
    addi r1, r1, 0x48
    mtlr r0
    blr
}

//80074260
ASM s32 fn_80074260(void)
{
    nofralloc
    mflr r0
    lis r4, Packet_804B9898@ha
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stw r31, 0x2c(r1)
    addi r31, r4, Packet_804B9898@l
    stw r30, 0x28(r1)
    stw r29, 0x24(r1)
    addi r29, r3, 0x0
    bl OSDisableInterrupts
    lis r4, 0xcc00
    lwzu r5, 0x6434(r4)
    rlwinm. r0, r5, 0, 4, 4
    beq L_800742A0
    li r30, 0x1
    b L_800742A4
L_800742A0:
    li r30, 0x0
L_800742A4:
    cmpwi r29, 0x0
    beq L_800742C8
    li r0, 0x0
    stw r0, 0x1e0(r31)
    oris r5, r5, 0x800
    stw r0, 0x1e4(r31)
    stw r0, 0x1e8(r31)
    stw r0, 0x1ec(r31)
    b L_800742CC
L_800742C8:
    rlwinm r5, r5, 0, 5, 3
L_800742CC:
    rlwinm r5, r5, 0, 1, 30
    stw r5, 0x0(r4)
    bl OSRestoreInterrupts
    mr r3, r30
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

//800742F8
ASM s32 fn_800742F8(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    bl OSDisableInterrupts
    lis r4, Packet_804B9898+0x1a0@ha
    li r0, 0x4
    addi r4, r4, Packet_804B9898+0x1a0@l
    mtctr r0
    addi r31, r3, 0x0
    addi r3, r4, 0x0
L_8007432C:
    lwz r0, 0x0(r3)
    cmplw r0, r30
    bne L_80074348
    mr r3, r31
    bl OSRestoreInterrupts
    li r3, 0x1
    b L_800743AC
L_80074348:
    addi r3, r3, 0x4
    bdnz L_8007432C
    li r0, 0x4
    mtctr r0
    li r5, 0x0
L_8007435C:
    lwz r0, 0x0(r4)
    cmplwi r0, 0x0
    bne L_80074394
    lis r3, Packet_804B9898+0x1a0@ha
    slwi r4, r5, 2
    addi r0, r3, Packet_804B9898+0x1a0@l
    add r3, r0, r4
    stw r30, 0x0(r3)
    li r3, 0x1
    bl fn_80074260
    mr r3, r31
    bl OSRestoreInterrupts
    li r3, 0x1
    b L_800743AC
L_80074394:
    addi r4, r4, 0x4
    addi r5, r5, 0x1
    bdnz L_8007435C
    mr r3, r31
    bl OSRestoreInterrupts
    li r3, 0x0
L_800743AC:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

//800743C4
ASM s32 fn_800743C4(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    bl OSDisableInterrupts
    lis r4, Packet_804B9898+0x1a0@ha
    li r0, 0x4
    addi r5, r4, Packet_804B9898+0x1a0@l
    mtctr r0
    addi r31, r3, 0x0
    addi r3, r5, 0x0
    li r4, 0x0
L_800743FC:
    lwz r0, 0x0(r3)
    cmplw r0, r30
    bne L_80074488
    lis r3, Packet_804B9898+0x1a0@ha
    slwi r4, r4, 2
    addi r0, r3, Packet_804B9898+0x1a0@l
    add r3, r0, r4
    li r0, 0x0
    stw r0, 0x0(r3)
    li r4, 0x0
    lwz r0, 0x0(r5)
    cmplwi r0, 0x0
    bne L_80074468
    addi r3, r5, 0x4
    lwz r0, 0x4(r5)
    li r4, 0x1
    cmplwi r0, 0x0
    bne L_80074468
    lwzu r0, 0x4(r3)
    li r4, 0x2
    cmplwi r0, 0x0
    bne L_80074468
    lwz r0, 0x4(r3)
    li r4, 0x3
    cmplwi r0, 0x0
    bne L_80074468
    li r4, 0x4
L_80074468:
    cmpwi r4, 0x4
    bne L_80074478
    li r3, 0x0
    bl fn_80074260
L_80074478:
    mr r3, r31
    bl OSRestoreInterrupts
    li r3, 0x1
    b L_800744A0
L_80074488:
    addi r3, r3, 0x4
    addi r4, r4, 0x1
    bdnz L_800743FC
    mr r3, r31
    bl OSRestoreInterrupts
    li r3, 0x0
L_800744A0:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

//800744B8
ASM void SIInit(void)
{
    nofralloc
    mflr r0
    lis r4, Packet_804B9898@ha
    stw r0, 0x4(r1)
    stwu r1, -0x10(r1)
    stw r31, 0xc(r1)
    addi r31, r4, Packet_804B9898@l
    lwz r3, __SIVersion
    bl OSRegisterVersion
    li r5, -0x1
    stw r5, 0x60(r31)
    lis r3, Si_80498424@ha
    addi r4, r3, Si_80498424@l
    stw r5, 0x40(r31)
    li r0, 0x0
    li r3, 0x0
    stw r5, 0x20(r31)
    stw r5, 0x0(r31)
    stw r0, 0x4(r4)
    bl SISetSamplingRate
    lis r3, 0xcc00
L_80074508:
    addi r4, r3, 0x6400
    lwzu r0, 0x34(r4)
    clrlwi. r0, r0, 31
    bne L_80074508
    lis r0, 0x8000
    lis r3, SIInterruptHandler@ha
    stw r0, 0x0(r4)
    addi r4, r3, SIInterruptHandler@l
    li r3, 0x14
    bl __OSSetInterruptHandler
    li r3, 0x800
    bl __OSUnmaskInterrupts
    li r3, 0x0
    bl SIGetType
    li r3, 0x1
    bl SIGetType
    li r3, 0x2
    bl SIGetType
    li r3, 0x3
    bl SIGetType
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    addi r1, r1, 0x10
    mtlr r0
    blr
}

//8007456C
ASM s32 fn_8007456C(void)
{
    nofralloc
    mflr r0
    lis r9, lbl_804983E0@ha
    stw r0, 0x4(r1)
    stwu r1, -0x48(r1)
    stmw r25, 0x2c(r1)
    addi r26, r3, 0x0
    addi r27, r4, 0x0
    addi r28, r5, 0x0
    addi r29, r6, 0x0
    addi r30, r7, 0x0
    addi r31, r8, 0x0
    addi r25, r9, lbl_804983E0@l
    bl OSDisableInterrupts
    lwz r0, 0x44(r25)
    cmpwi r0, -0x1
    beq L_800745B8
    bl OSRestoreInterrupts
    li r3, 0x0
    b L_80074764
L_800745B8:
    lis r6, 0xcc00
    slwi r0, r26, 3
    lwz r7, 0x6438(r6)
    lis r4, 0xf00
    sraw r0, r4, r0
    and r7, r7, r0
    stw r7, 0x6438(r6)
    addi r0, r28, 0x3
    srwi r4, r0, 2
    stw r26, 0x44(r25)
    cmplwi r4, 0x0
    li r5, 0x0
    stw r31, 0x54(r25)
    stw r30, 0x4c(r25)
    stw r29, 0x50(r25)
    ble L_80074698
    cmplwi r4, 0x8
    subi r7, r4, 0x8
    ble L_8007474C
    addi r0, r7, 0x7
    srwi r0, r0, 3
    cmplwi r7, 0x0
    mtctr r0
    addi r7, r27, 0x0
    addi r6, r6, 0x6400
    ble L_8007474C
L_80074620:
    lwz r0, 0x0(r7)
    addi r5, r5, 0x8
    stw r0, 0x80(r6)
    lwz r0, 0x4(r7)
    stw r0, 0x84(r6)
    lwz r0, 0x8(r7)
    stw r0, 0x88(r6)
    lwz r0, 0xc(r7)
    stw r0, 0x8c(r6)
    lwz r0, 0x10(r7)
    stw r0, 0x90(r6)
    lwz r0, 0x14(r7)
    stw r0, 0x94(r6)
    lwz r0, 0x18(r7)
    stw r0, 0x98(r6)
    lwz r0, 0x1c(r7)
    addi r7, r7, 0x20
    stw r0, 0x9c(r6)
    addi r6, r6, 0x20
    bdnz L_80074620
    b L_8007474C
L_80074674:
    subf r0, r5, r4
    cmplw r5, r4
    mtctr r0
    bge L_80074698
L_80074684:
    lwz r0, 0x0(r6)
    addi r6, r6, 0x4
    stw r0, 0x80(r7)
    addi r7, r7, 0x4
    bdnz L_80074684
L_80074698:
    lis r4, 0xcc00
    addi r6, r4, 0x6400
    lwzu r0, 0x34(r6)
    li r4, 0x1
    stw r0, 0x24(r1)
    cmplwi r31, 0x0
    lbz r0, 0x24(r1)
    rlwimi r0, r4, 7, 24, 24
    stb r0, 0x24(r1)
    beq L_800746C4
    b L_800746C8
L_800746C4:
    li r4, 0x0
L_800746C8:
    lbz r0, 0x24(r1)
    rlwimi r0, r4, 6, 25, 25
    cmplwi r28, 0x80
    stb r0, 0x24(r1)
    bne L_800746E4
    li r0, 0x0
    b L_800746E8
L_800746E4:
    mr r0, r28
L_800746E8:
    clrlwi r4, r0, 24
    lbz r0, 0x25(r1)
    rlwimi r0, r4, 0, 25, 31
    cmplwi r30, 0x80
    stb r0, 0x25(r1)
    bne L_80074708
    li r0, 0x0
    b L_8007470C
L_80074708:
    mr r0, r30
L_8007470C:
    clrlwi r4, r0, 24
    lbz r0, 0x26(r1)
    rlwimi r0, r4, 0, 25, 31
    stb r0, 0x26(r1)
    li r4, 0x1
    lbz r0, 0x27(r1)
    rlwimi r0, r26, 1, 29, 30
    stb r0, 0x27(r1)
    lbz r0, 0x27(r1)
    rlwimi r0, r4, 0, 31, 31
    stb r0, 0x27(r1)
    lwz r0, 0x24(r1)
    stw r0, 0x0(r6)
    bl OSRestoreInterrupts
    li r3, 0x1
    b L_80074764
L_8007474C:
    lis r6, 0xcc00
    slwi r0, r5, 2
    addi r7, r6, 0x6400
    add r6, r27, r0
    add r7, r7, r0
    b L_80074674
L_80074764:
    lmw r25, 0x2c(r1)
    lwz r0, 0x4c(r1)
    addi r1, r1, 0x48
    mtlr r0
    blr
}

//80074778
ASM s32 fn_80074778(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    mr r30, r3
    bl OSDisableInterrupts
    lis r4, 0xcc00
    subfic r0, r30, 0x3
    lwz r31, 0x6438(r4)
    slwi r0, r0, 3
    srw r31, r31, r0
    rlwinm. r0, r31, 0, 28, 28
    beq L_800747D4
    lis r4, Type_80498438@ha
    slwi r5, r30, 2
    addi r0, r4, Type_80498438@l
    add r4, r0, r5
    lwz r0, 0x0(r4)
    rlwinm. r0, r0, 0, 24, 24
    bne L_800747D4
    li r0, 0x8
    stw r0, 0x0(r4)
L_800747D4:
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

//800747F4
ASM s32 fn_800747F4(void)
{
    nofralloc
    mulli r0, r3, 0xc
    lis r3, 0xcc00
    addi r3, r3, 0x6400
    stwx r4, r3, r0
    blr
}

//80074808
ASM s32 fn_80074808(void)
{
    nofralloc
    lis r3, 0xcc00
    lis r0, 0x8000
    stw r0, 0x6438(r3)
    blr
}

//80074818
ASM u32 SISetXY(u32 x, u32 y)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    slwi r0, r4, 8
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    slwi r31, r3, 16
    or r31, r31, r0
    bl OSDisableInterrupts
    lis r4, Si_80498424@ha
    addi r4, r4, Si_80498424@l
    lwz r0, 0x4(r4)
    addi r5, r4, 0x4
    lis r4, 0xcc00
    rlwinm r0, r0, 0, 24, 5
    stw r0, 0x0(r5)
    lwz r0, 0x0(r5)
    or r0, r0, r31
    stw r0, 0x0(r5)
    lwz r31, 0x0(r5)
    stw r31, 0x6430(r4)
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

//80074884
ASM s32 fn_80074884(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    mr. r31, r3
    bne L_800748AC
    lis r3, Si_80498424@ha
    addi r3, r3, Si_80498424@l
    lwz r3, 0x4(r3)
    b L_8007490C
L_800748AC:
    bl OSDisableInterrupts
    lis r4, Si_80498424@ha
    addi r4, r4, Si_80498424@l
    srwi r31, r31, 24
    lwz r0, 0x4(r4)
    addi r5, r4, 0x4
    extrwi r4, r31, 4, 24
    andc r0, r0, r4
    stw r0, 0x0(r5)
    oris r0, r4, 0x3ff
    ori r0, r0, 0xfff0
    and r31, r31, r0
    lwz r0, 0x0(r5)
    rlwinm r31, r31, 0, 24, 5
    or r0, r0, r31
    stw r0, 0x0(r5)
    lis r4, 0xcc00
    addi r4, r4, 0x6400
    lwz r31, 0x0(r5)
    lis r0, 0x8000
    stw r0, 0x38(r4)
    stw r31, 0x30(r4)
    bl OSRestoreInterrupts
    mr r3, r31
L_8007490C:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

//80074920
ASM s32 fn_80074920(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    mr. r31, r3
    bne L_80074948
    lis r3, Si_80498424@ha
    addi r3, r3, Si_80498424@l
    lwz r3, 0x4(r3)
    b L_80074978
L_80074948:
    bl OSDisableInterrupts
    lis r4, Si_80498424@ha
    addi r4, r4, Si_80498424@l
    lwz r0, 0x4(r4)
    rlwinm r31, r31, 8, 24, 27
    addi r5, r4, 0x4
    lis r4, 0xcc00
    andc r31, r0, r31
    stw r31, 0x6430(r4)
    stw r31, 0x0(r5)
    bl OSRestoreInterrupts
    mr r3, r31
L_80074978:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

//8007498C
ASM s32 fn_8007498C(void)
{
    nofralloc
    mflr r0
    lis r4, Packet_804B9898@ha
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    addi r31, r4, Packet_804B9898@l
    stw r30, 0x20(r1)
    addi r30, r3, 0x0
    stw r29, 0x1c(r1)
    bl OSDisableInterrupts
    lis r4, 0xcc00
    subfic r0, r30, 0x3
    lwz r29, 0x6438(r4)
    slwi r0, r0, 3
    srw r29, r29, r0
    rlwinm. r0, r29, 0, 28, 28
    beq L_800749F4
    lis r4, Type_80498438@ha
    slwi r5, r30, 2
    addi r0, r4, Type_80498438@l
    add r4, r0, r5
    lwz r0, 0x0(r4)
    rlwinm. r0, r0, 0, 24, 24
    bne L_800749F4
    li r0, 0x8
    stw r0, 0x0(r4)
L_800749F4:
    bl OSRestoreInterrupts
    rlwinm. r0, r29, 0, 26, 26
    beq L_80074A40
    mulli r4, r30, 0xc
    lis r3, 0xcc00
    addi r0, r3, 0x6400
    add r3, r0, r4
    slwi r4, r30, 3
    lwz r0, 0x4(r3)
    add r6, r31, r4
    stw r0, 0x1c0(r6)
    slwi r0, r30, 2
    add r4, r31, r0
    lwz r5, 0x8(r3)
    li r0, 0x1
    li r3, 0x1
    stw r5, 0x1c4(r6)
    stw r0, 0x1b0(r4)
    b L_80074A44
L_80074A40:
    li r3, 0x0
L_80074A44:
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

//80074A60
ASM s32 fn_80074A60(void)
{
    nofralloc
    mflr r0
    lis r5, Packet_804B9898@ha
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stmw r27, 0x14(r1)
    addi r29, r3, 0x0
    addi r30, r4, 0x0
    addi r28, r5, Packet_804B9898@l
    bl OSDisableInterrupts
    addi r31, r3, 0x0
    addi r3, r29, 0x0
    bl fn_80074778
    rlwinm. r0, r3, 0, 26, 26
    beq L_80074AD0
    mulli r4, r29, 0xc
    lis r3, 0xcc00
    addi r0, r3, 0x6400
    add r4, r0, r4
    slwi r3, r29, 3
    lwz r0, 0x4(r4)
    add r5, r28, r3
    stw r0, 0x1c0(r5)
    slwi r0, r29, 2
    add r3, r28, r0
    lwz r4, 0x8(r4)
    li r0, 0x1
    stw r4, 0x1c4(r5)
    stw r0, 0x1b0(r3)
L_80074AD0:
    slwi r0, r29, 2
    add r3, r28, r0
    lwz r27, 0x1b0(r3)
    li r0, 0x0
    cmpwi r27, 0x0
    stw r0, 0x1b0(r3)
    beq L_80074B04
    slwi r0, r29, 3
    add r3, r28, r0
    lwz r0, 0x1c0(r3)
    stw r0, 0x0(r30)
    lwz r0, 0x1c4(r3)
    stw r0, 0x4(r30)
L_80074B04:
    mr r3, r31
    bl OSRestoreInterrupts
    mr r3, r27
    lmw r27, 0x14(r1)
    lwz r0, 0x2c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

//80074B24
ASM s32 fn_80074B24(void)
{
    nofralloc
    mflr r0
    lis r4, Packet_804B9898+0x80@ha
    stw r0, 0x4(r1)
    addi r0, r4, Packet_804B9898+0x80@l
    lis r4, 0x6666
    subf r0, r0, r3
    stwu r1, -0x20(r1)
    addi r3, r4, 0x6667
    mulhw r0, r3, r0
    stw r31, 0x1c(r1)
    srawi r0, r0, 4
    srwi r3, r0, 31
    add r0, r0, r3
    lis r3, Packet_804B9898@ha
    slwi r4, r0, 5
    addi r0, r3, Packet_804B9898@l
    add r31, r0, r4
    lwz r3, 0x0(r31)
    cmpwi r3, -0x1
    beq L_80074B9C
    lwz r4, 0x4(r31)
    lwz r5, 0x8(r31)
    lwz r6, 0xc(r31)
    lwz r7, 0x10(r31)
    lwz r8, 0x14(r31)
    bl fn_8007456C
    cmpwi r3, 0x0
    beq L_80074B9C
    li r0, -0x1
    stw r0, 0x0(r31)
L_80074B9C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

//80074BB0
ASM BOOL SITransfer(s32 chan, void* output, u32 outputBytes, void* input, u32 inputBytes, SICallback callback, OSTime delay)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x60(r1)
    stmw r19, 0x2c(r1)
    addi r24, r3, 0x0
    lis r3, Packet_804B9898@ha
    addi r23, r3, Packet_804B9898@l
    slwi r0, r24, 5
    addi r25, r4, 0x0
    addi r26, r5, 0x0
    addi r27, r6, 0x0
    addi r28, r7, 0x0
    addi r29, r8, 0x0
    addi r31, r9, 0x0
    addi r30, r10, 0x0
    add r22, r23, r0
    bl OSDisableInterrupts
    lwz r0, 0x0(r22)
    addi r21, r3, 0x0
    cmpwi r0, -0x1
    bne L_80074C14
    lis r3, Si_80498424@ha
    lwz r0, Si_80498424@l(r3)
    cmpw r0, r24
    bne L_80074C24
L_80074C14:
    mr r3, r21
    bl OSRestoreInterrupts
    li r3, 0x0
    b L_80074D08
L_80074C24:
    bl __OSGetSystemTime
    li r0, 0x0
    xor r5, r30, r0
    xor r0, r31, r0
    or. r0, r5, r0
    bne L_80074C48
    addi r19, r4, 0x0
    addi r20, r3, 0x0
    b L_80074C60
L_80074C48:
    slwi r0, r24, 3
    add r6, r23, r0
    lwz r5, 0x144(r6)
    lwz r0, 0x140(r6)
    addc r19, r30, r5
    adde r20, r31, r0
L_80074C60:
    xoris r6, r3, 0x8000
    xoris r5, r20, 0x8000
    subfc r0, r19, r4
    subfe r5, r5, r6
    subfe r5, r6, r6
    neg. r5, r5
    beq L_80074CA8
    mulli r0, r24, 0x28
    subfc r30, r4, r19
    subfe r31, r3, r20
    lis r4, fn_80074B24@ha
    add r3, r23, r0
    addi r7, r4, fn_80074B24@l
    addi r6, r30, 0x0
    addi r5, r31, 0x0
    addi r3, r3, 0x80
    bl OSSetAlarm
    b L_80074CDC
L_80074CA8:
    addi r3, r24, 0x0
    addi r4, r25, 0x0
    addi r5, r26, 0x0
    addi r6, r27, 0x0
    addi r7, r28, 0x0
    addi r8, r29, 0x0
    bl fn_8007456C
    cmpwi r3, 0x0
    beq L_80074CDC
    mr r3, r21
    bl OSRestoreInterrupts
    li r3, 0x1
    b L_80074D08
L_80074CDC:
    stw r24, 0x0(r22)
    mr r3, r21
    stw r25, 0x4(r22)
    stw r26, 0x8(r22)
    stw r27, 0xc(r22)
    stw r28, 0x10(r22)
    stw r29, 0x14(r22)
    stw r19, 0x1c(r22)
    stw r20, 0x18(r22)
    bl OSRestoreInterrupts
    li r3, 0x1
L_80074D08:
    lmw r19, 0x2c(r1)
    lwz r0, 0x64(r1)
    addi r1, r1, 0x60
    mtlr r0
    blr
}

//80074D1C
ASM void GetTypeCallback(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stmw r26, 0x18(r1)
    addi r27, r3, 0x0
    lis r3, Type_80498438@ha
    addi r0, r3, Type_80498438@l
    slwi r29, r27, 2
    add r30, r0, r29
    lis r3, Packet_804B9898@ha
    addi r26, r4, 0x0
    addi r31, r3, Packet_804B9898@l
    lwz r0, 0x0(r30)
    rlwinm r0, r0, 0, 25, 23
    stw r0, 0x0(r30)
    lwz r0, 0x0(r30)
    or r0, r0, r26
    stw r0, 0x0(r30)
    bl __OSGetSystemTime
    slwi r0, r27, 3
    add r5, r31, r0
    stw r4, 0x124(r5)
    lis r4, 0x8000
    clrlwi. r0, r26, 28
    stw r3, 0x120(r5)
    srw r4, r4, r27
    opword 0x806D8BC8
    lwz r28, 0x0(r30)
    andc r0, r3, r4
    opword 0x900D8BC8
    and r26, r3, r4
    bne L_80074DBC
    rlwinm r3, r28, 0, 3, 4
    subis r0, r3, 0x800
    cmplwi r0, 0x0
    bne L_80074DBC
    clrrwi. r0, r28, 31
    beq L_80074DBC
    rlwinm. r0, r28, 0, 5, 5
    beq L_80074E14
L_80074DBC:
    addi r3, r27, 0x0
    li r4, 0x0
    bl OSSetWirelessID
    slwi r0, r27, 4
    lwz r30, 0x0(r30)
    add r31, r31, r0
    li r29, 0x0
    addi r28, r29, 0x0
    addi r31, r31, 0x160
L_80074DE0:
    lwz r12, 0x0(r31)
    cmplwi r12, 0x0
    beq L_80074E00
    stw r28, 0x0(r31)
    mtlr r12
    addi r3, r27, 0x0
    addi r4, r30, 0x0
    blrl
L_80074E00:
    addi r29, r29, 0x1
    cmpwi r29, 0x4
    addi r31, r31, 0x4
    blt L_80074DE0
    b L_80074FA0
L_80074E14:
    mr r3, r27
    bl OSGetWirelessID
    cmpwi r26, 0x0
    clrlslwi r26, r3, 16, 8
    beq L_80074E78
    rlwinm. r0, r26, 0, 11, 11
    beq L_80074E78
    lis r3, 0xd0
    subi r0, r3, 0x100
    and r0, r26, r0
    oris r0, r0, 0x4e10
    add r4, r31, r29
    stwu r0, 0x1f0(r4)
    li r0, 0x80
    lis r3, GetTypeCallback@ha
    stw r0, 0x0(r30)
    addi r8, r3, GetTypeCallback@l
    addi r3, r27, 0x0
    addi r6, r30, 0x0
    li r5, 0x3
    li r7, 0x3
    li r10, 0x0
    li r9, 0x0
    bl SITransfer
    b L_80074FA0
L_80074E78:
    rlwinm. r0, r28, 0, 11, 11
    beq L_80074EEC
    lis r3, 0xd0
    subi r3, r3, 0x100
    and r0, r26, r3
    and r3, r28, r3
    cmplw r0, r3
    beq L_80074F58
    rlwinm. r0, r26, 0, 11, 11
    bne L_80074EB0
    oris r26, r3, 0x10
    addi r3, r27, 0x0
    extrwi r4, r26, 16, 8
    bl OSSetWirelessID
L_80074EB0:
    oris r0, r26, 0x4e00
    add r4, r31, r29
    stwu r0, 0x1f0(r4)
    li r0, 0x80
    lis r3, GetTypeCallback@ha
    stw r0, 0x0(r30)
    addi r8, r3, GetTypeCallback@l
    addi r3, r27, 0x0
    addi r6, r30, 0x0
    li r5, 0x3
    li r7, 0x3
    li r10, 0x0
    li r9, 0x0
    bl SITransfer
    b L_80074FA0
L_80074EEC:
    rlwinm. r0, r28, 0, 1, 1
    beq L_80074F4C
    lis r3, 0xd0
    subi r0, r3, 0x100
    and r28, r28, r0
    oris r28, r28, 0x10
    addi r3, r27, 0x0
    extrwi r4, r28, 16, 8
    bl OSSetWirelessID
    oris r0, r28, 0x4e00
    add r4, r31, r29
    stwu r0, 0x1f0(r4)
    li r0, 0x80
    lis r3, GetTypeCallback@ha
    stw r0, 0x0(r30)
    addi r8, r3, GetTypeCallback@l
    addi r3, r27, 0x0
    addi r6, r30, 0x0
    li r5, 0x3
    li r7, 0x3
    li r10, 0x0
    li r9, 0x0
    bl SITransfer
    b L_80074FA0
L_80074F4C:
    addi r3, r27, 0x0
    li r4, 0x0
    bl OSSetWirelessID
L_80074F58:
    slwi r0, r27, 4
    lwz r30, 0x0(r30)
    add r31, r31, r0
    li r29, 0x0
    addi r28, r29, 0x0
    addi r31, r31, 0x160
L_80074F70:
    lwz r12, 0x0(r31)
    cmplwi r12, 0x0
    beq L_80074F90
    stw r28, 0x0(r31)
    mtlr r12
    addi r3, r27, 0x0
    addi r4, r30, 0x0
    blrl
L_80074F90:
    addi r29, r29, 0x1
    cmpwi r29, 0x4
    addi r31, r31, 0x4
    blt L_80074F70
L_80074FA0:
    lmw r26, 0x18(r1)
    lwz r0, 0x34(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

//80074FB4
ASM u32 SIGetType(s32 chan)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stmw r27, 0x14(r1)
    mr r27, r3
    bl OSDisableInterrupts
    lis r4, Type_80498438@ha
    slwi r5, r27, 2
    addi r0, r4, Type_80498438@l
    add r30, r0, r5
    lwz r28, 0x0(r30)
    mr r29, r3
    bl __OSGetSystemTime
    lis r5, Packet_804B9898+0x120@ha
    slwi r6, r27, 3
    addi r0, r5, Packet_804B9898+0x120@l
    add r31, r0, r6
    lwz r6, 0x4(r31)
    lis r5, Si_80498424@ha
    addi r5, r5, Si_80498424@l
    lwz r0, 0x0(r31)
    subfc r4, r6, r4
    subfe r0, r0, r3
    lwz r6, 0x4(r5)
    li r5, 0x80
    sraw r3, r5, r27
    and. r3, r6, r3
    beq L_80075054
    cmplwi r28, 0x8
    beq L_80075048
    bl __OSGetSystemTime
    stw r4, 0x4(r31)
    stw r3, 0x0(r31)
    mr r3, r29
    bl OSRestoreInterrupts
    mr r3, r28
    b L_80075164
L_80075048:
    stw r5, 0x0(r30)
    li r28, 0x80
    b L_80075104
L_80075054:
    lis r3, 0x8000
    lwz r6, 0xf8(r3)
    lis r5, 0x1062
    addi r5, r5, 0x4dd3
    srwi r6, r6, 2
    mulhwu r5, r5, r6
    srwi r5, r5, 6
    mulli r7, r5, 0x32
    li r3, 0x0
    xoris r6, r3, 0x8000
    xoris r5, r0, 0x8000
    subfc r3, r4, r7
    subfe r5, r5, r6
    subfe r5, r6, r6
    neg. r5, r5
    bne L_800750AC
    cmplwi r28, 0x8
    beq L_800750AC
    mr r3, r29
    bl OSRestoreInterrupts
    mr r3, r28
    b L_80075164
L_800750AC:
    lis r3, 0x8000
    lwz r6, 0xf8(r3)
    lis r5, 0x1062
    addi r5, r5, 0x4dd3
    srwi r6, r6, 2
    mulhwu r5, r5, r6
    srwi r5, r5, 6
    mulli r6, r5, 0x4b
    li r3, 0x0
    xoris r5, r3, 0x8000
    xoris r3, r0, 0x8000
    subfc r0, r4, r6
    subfe r3, r3, r5
    subfe r3, r5, r5
    neg. r3, r3
    bne L_800750F8
    li r0, 0x80
    stw r0, 0x0(r30)
    b L_80075104
L_800750F8:
    li r0, 0x80
    stw r0, 0x0(r30)
    li r28, 0x80
L_80075104:
    bl __OSGetSystemTime
    stw r4, 0x4(r31)
    lis r4, 0x431c
    lis r5, GetTypeCallback@ha
    stw r3, 0x0(r31)
    lis r3, 0x8000
    addi r8, r5, GetTypeCallback@l
    lwz r0, 0xf8(r3)
    subi r4, r4, 0x217d
    addi r3, r27, 0x0
    srwi r0, r0, 2
    mulhwu r0, r4, r0
    srwi r0, r0, 15
    mulli r0, r0, 0x41
    srwi r10, r0, 3
    addi r6, r30, 0x0
    opword 0x388D8BC4
    li r5, 0x1
    li r7, 0x3
    li r9, 0x0
    bl SITransfer
    mr r3, r29
    bl OSRestoreInterrupts
    mr r3, r28
L_80075164:
    lmw r27, 0x14(r1)
    lwz r0, 0x2c(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

//80075178
ASM s32 fn_80075178(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r31, r4, 0x0
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    addi r28, r3, 0x0
    bl OSDisableInterrupts
    addi r30, r3, 0x0
    addi r3, r28, 0x0
    bl SIGetType
    lis r4, Type_80498438@ha
    slwi r5, r28, 2
    addi r0, r4, Type_80498438@l
    add r4, r0, r5
    lwz r0, 0x0(r4)
    addi r29, r3, 0x0
    rlwinm. r0, r0, 0, 24, 24
    beq L_80075274
    lis r3, Packet_804B9898+0x160@ha
    slwi r4, r28, 4
    addi r0, r3, Packet_804B9898+0x160@l
    add r4, r0, r4
    lwz r0, 0x0(r4)
    li r5, 0x0
    cmplw r0, r31
    beq L_80075288
    cmplwi r0, 0x0
    bne L_80075200
    slwi r0, r5, 2
    stwx r31, r4, r0
    b L_80075288
L_80075200:
    addi r3, r4, 0x4
    lwz r0, 0x4(r4)
    li r5, 0x1
    cmplw r0, r31
    beq L_80075288
    cmplwi r0, 0x0
    bne L_80075228
    slwi r0, r5, 2
    stwx r31, r4, r0
    b L_80075288
L_80075228:
    lwzu r0, 0x4(r3)
    li r5, 0x2
    cmplw r0, r31
    beq L_80075288
    cmplwi r0, 0x0
    bne L_8007524C
    slwi r0, r5, 2
    stwx r31, r4, r0
    b L_80075288
L_8007524C:
    lwz r0, 0x4(r3)
    li r5, 0x3
    cmplw r0, r31
    beq L_80075288
    cmplwi r0, 0x0
    bne L_80075288
    slwi r0, r5, 2
    stwx r31, r4, r0
    b L_80075288
    b L_80075288
L_80075274:
    addi r12, r31, 0x0
    mtlr r12
    addi r3, r28, 0x0
    addi r4, r29, 0x0
    blrl
L_80075288:
    mr r3, r30
    bl OSRestoreInterrupts
    mr r3, r29
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

//800752B4
ASM s32 fn_800752B4(void)
{
    nofralloc
    rlwinm. r0, r3, 0, 28, 28
    clrlwi r4, r3, 24
    clrrwi r5, r3, 8
    beq L_800752CC
    li r3, 0x8
    blr
L_800752CC:
    andi. r0, r4, 0x47
    beq L_800752DC
    li r3, 0x40
    blr
L_800752DC:
    cmplwi r4, 0x0
    beq L_800752EC
    li r3, 0x80
    blr
L_800752EC:
    rlwinm. r3, r5, 0, 3, 4
    bne L_80075354
    clrrwi r3, r5, 16
    lis r0, 0x4
    cmpw r3, r0
    beqlr
    bge L_80075328
    lis r0, 0x2
    cmpw r3, r0
    beqlr
    bge L_8007534C
    lis r0, 0x1
    cmpw r3, r0
    beqlr
    b L_8007534C
L_80075328:
    lis r0, 0x500
    cmpw r3, r0
    beqlr
    bge L_8007534C
    lis r0, 0x200
    cmpw r3, r0
    beqlr
    b L_8007534C
    blr
L_8007534C:
    li r3, 0x40
    blr
L_80075354:
    subis r0, r3, 0x800
    cmplwi r0, 0x0
    beq L_80075368
    li r3, 0x40
    blr
L_80075368:
    clrrwi r3, r5, 16
    lis r0, 0x900
    cmpw r3, r0
    beqlr
    bge L_80075390
    lis r0, 0x800
    cmpw r3, r0
    beqlr
    b L_80075390
    blr
L_80075390:
    clrrwi r3, r5, 21
    subis r0, r3, 0x820
    cmplwi r0, 0x0
    bne L_800753A8
    lis r3, 0x820
    blr
L_800753A8:
    clrrwi. r0, r5, 31
    beq L_800753E0
    rlwinm. r0, r5, 0, 5, 5
    bne L_800753E0
    andis. r3, r5, 0x8b10
    addis r0, r3, 0x74f0
    cmplwi r0, 0x0
    bne L_800753D0
    lis r3, 0x8b10
    blr
L_800753D0:
    rlwinm. r0, r5, 0, 6, 6
    bne L_800753E0
    lis r3, 0x8800
    blr
L_800753E0:
    andis. r3, r5, 0x900
    subis r0, r3, 0x900
    cmplwi r0, 0x0
    bne L_800753F8
    lis r3, 0x900
    blr
L_800753F8:
    li r3, 0x40
    blr
}

//80075400
ASM s32 fn_80075400(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    bl SIGetType
    bl fn_800752B4
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

//80075424
ASM void SISetSamplingRate(u32 msec)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    addi r29, r3, 0x0
    cmplwi r29, 0xb
    lis r3, Type_80498438+0xC0@ha
    addi r31, r3, Type_80498438+0xC0@l
    ble L_80075454
    li r29, 0xb
L_80075454:
    bl OSDisableInterrupts
    opword 0x93AD8BD0
    mr r30, r3
    bl VIGetTvFormat
    cmpwi r3, 0x2
    beq L_8007548C
    bge L_80075480
    cmpwi r3, 0x0
    beq L_8007548C
    bge L_80075494
    b L_8007549C
L_80075480:
    cmpwi r3, 0x5
    beq L_8007548C
    b L_8007549C
L_8007548C:
    mr r4, r31
    b L_800754B0
L_80075494:
    addi r4, r31, 0x30
    b L_800754B0
L_8007549C:
    addi r3, r31, 0x60
    crclr 6
    bl OSReport
    li r29, 0x0
    addi r4, r31, 0x0
L_800754B0:
    lis r3, 0xcc00
    lhz r0, 0x206c(r3)
    clrlwi. r0, r0, 31
    beq L_800754C8
    li r5, 0x2
    b L_800754CC
L_800754C8:
    li r5, 0x1
L_800754CC:
    slwi r3, r29, 2
    lhzx r0, r4, r3
    add r3, r4, r3
    lbz r4, 0x2(r3)
    mullw r3, r5, r0
    bl SISetXY
    mr r3, r30
    bl OSRestoreInterrupts
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

//80075508
ASM void fn_80075508(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x8(r1)
    opword 0x806D8BD0
    bl SISetSamplingRate
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

