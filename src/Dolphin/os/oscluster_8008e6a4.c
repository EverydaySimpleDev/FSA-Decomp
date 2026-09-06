#include "types.h"

extern f32 lbl_8045EDB0;
extern f32 lbl_8045EDC0;
extern f32 lbl_8045EDE0;
extern f32 lbl_8045EDEC;
extern f32 lbl_8045EE0C;
extern f32 lbl_8045EE20;
extern f32 lbl_80499428;
extern f32 lbl_804994A0;
extern f32 lbl_804994B0;
extern f32 lbl_804994C0;
extern f32 lbl_80499510;
extern f32 lbl_80539DB0;
extern f32 lbl_80539DB4;
extern f32 lbl_8053A8A8;
extern f32 lbl_8053A8AC;
extern f32 lbl_8053A8B0;
extern f32 lbl_8053A8BC;
extern f32 lbl_8053A8C0;
extern f32 lbl_8053A8C4;
extern f32 lbl_8053A8C8;
extern f32 lbl_8053A8CC;
extern f32 lbl_8053A8F8;
extern f32 lbl_8053A958;
extern f32 lbl_8053A95C;
extern f32 lbl_8053A960;
extern f32 lbl_8053A968;
extern f32 lbl_8053A96C;
extern f32 lbl_8053A970;
extern f32 lbl_8053A974;
extern f32 lbl_8053A978;
extern f32 lbl_8053A980;
extern f32 lbl_8053A984;
extern f32 lbl_8053A988;
extern f32 lbl_8053A98C;
extern f32 lbl_8053A990;
extern f32 lbl_8053A994;
extern f32 lbl_8053A998;
extern f32 lbl_8053B8A0;
extern f32 lbl_8053B8C8;
extern f32 lbl_8053B8CC;
extern f32 lbl_8053B8D0;
extern f32 lbl_8053B8D8;
extern f32 lbl_8053B8E0;
extern f32 lbl_8053B8E4;
extern f32 lbl_8053B8E8;
extern f32 lbl_8053B8EC;
extern f32 lbl_8053B8F0;
extern f32 lbl_8053B8F4;
extern f32 lbl_8053B8F8;
extern f32 lbl_8053B900;
extern f32 lbl_8053B904;
extern f32 lbl_8053B908;
extern f32 lbl_8053B910;
extern f32 lbl_8053B918;
extern f32 lbl_8053B920;
extern f32 lbl_8053B928;
extern f32 lbl_8053B92C;
extern f32 lbl_8053B930;
extern f32 lbl_8053B938;
extern f32 lbl_8053B940;
extern f32 lbl_8053B944;
extern f32 lbl_8053B948;
extern f32 lbl_8053B94C;
extern f32 lbl_8053B950;
extern f32 lbl_8053B954;
extern f32 lbl_8053B958;
extern f32 lbl_8053B95C;
extern f32 lbl_8053B960;

extern void DCFlushRange(void);
extern void GXInit(void);
extern void GXInitFifoBase(void);
extern void OSGetTick(void);
extern void OSInitMessageQueue(void);
extern void OSPanic(void);
extern void OSSendMessage(void);
extern void dtor_80084580(void);
extern void fn_8004BA50(void);
extern void fn_8004BA94(void);
extern void fn_8004BD78(void);
extern void fn_8004C228(void);
extern void fn_8004C6F0(void);
extern void fn_8004CF18(void);
extern void fn_8004D048(void);
extern void fn_8004D0B4(void);
extern void fn_8004D0C4(void);
extern void fn_8004D140(void);
extern void fn_80059D2C(void);
extern void fn_8005A048(void);
extern void fn_8005A144(void);
extern void fn_8005A464(void);
extern void fn_8005AD7C(void);
extern void fn_8005ADB4(void);
extern void fn_8005B93C(void);
extern void fn_8005BA0C(void);
extern void fn_8005BD44(void);
extern void fn_8005BE5C(void);
extern void fn_8005C094(void);
extern void fn_8005C24C(void);
extern void fn_8005C584(void);
extern void fn_8005C634(void);
extern void fn_8005C7E0(void);
extern void fn_8005C870(void);
extern void fn_8005CE08(void);
extern void fn_8005CF70(void);
extern void fn_8005D3C8(void);
extern void fn_8005D404(void);
extern void fn_8005D4BC(void);
extern void fn_8005D6E0(void);
extern void fn_8005D92C(void);
extern void fn_8005D974(void);
extern void fn_8005DC74(void);
extern void fn_8005DCC8(void);
extern void fn_8005DD00(void);
extern void fn_8005E9E0(void);
extern void fn_8005EA6C(void);
extern void fn_8005EAB0(void);
extern void fn_8005EAF4(void);
extern void fn_8005EB5C(void);
extern void fn_8005EBC4(void);
extern void fn_8005EF80(void);
extern void fn_8005F11C(void);
extern void fn_8005F48C(void);
extern void __construct_array(void);
extern void fn_8007CC98(void);
extern void fn_80083254(void);
extern void fn_800832A0(void);
extern void fn_800838C8(void);
extern void fn_8008393C(void);
extern void fn_80083A68(void);
extern void fn_80084370(void);
extern void fn_800844C4(void);
extern void fn_80084514(void);
extern void fn_800845A4(void);
extern void fn_80086AF8(void);
extern void fn_80086EDC(void);
extern void fn_80089084(void);
extern void fn_80089C70(void);
extern void fn_8008CC40(void);
extern void fn_8008CC6C(void);
extern void fn_80093A68(void);
extern void fn_80093BD0(void);
extern void fn_80093CE4(void);
extern void memcpy(void);
extern void strcmp(void);

ASM void fn_8008E6A4(void);
ASM void fn_8008E6F8(void);
ASM void fn_8008E714(void);
ASM void fn_8008E750(void);
ASM void fn_8008E7A4(void);
ASM void fn_8008E880(void);
ASM void fn_8008E93C(void);
ASM void fn_8008E97C(void);
ASM void fn_8008E9B8(void);
ASM void fn_8008E9F4(void);
ASM void fn_8008EA8C(void);
ASM void fn_8008EABC(void);
ASM void fn_8008EAEC(void);
ASM void fn_8008EB34(void);
ASM void fn_8008EBCC(void);
ASM void fn_8008EC0C(void);
ASM void fn_8008EC50(void);
ASM void fn_8008EC64(void);
ASM void fn_8008ED94(void);
ASM void fn_8008EDD4(void);
ASM void fn_8008EEA4(void);
ASM void fn_8008EED8(void);
ASM void fn_800906EC(void);
ASM void fn_80090DF0(void);
ASM void dtor_80090E64(void);
ASM void fn_80090EF0(void);
ASM void fn_80090F14(void);
ASM void fn_80090F40(void);
ASM void fn_80090FC0(void);
ASM void fn_800910F8(void);
ASM void fn_80091204(void);
ASM void fn_80091340(void);
ASM void fn_80091438(void);
ASM void fn_80091678(void);
ASM void fn_80091A7C(void);
ASM void fn_80091A88(void);
ASM void fn_80091AE4(void);
ASM void fn_80091AF0(void);
ASM void fn_80091B78(void);
ASM void fn_80091C38(void);
ASM void fn_80091C84(void);
ASM void fn_80091C90(void);
ASM void fn_80091CDC(void);
ASM void fn_80091D0C(void);
ASM void fn_80091EB8(void);
ASM void fn_80091EC4(void);
ASM void fn_80092044(void);
ASM void fn_80092088(void);
ASM void fn_80092090(void);
ASM void fn_8009209C(void);
ASM void fn_80092154(void);
ASM void fn_800921F8(void);
ASM void fn_80092270(void);
ASM void dtor_80092364(void);
ASM void fn_800923D8(void);
ASM void fn_80092584(void);
ASM void fn_800925B8(void);
ASM void fn_800926F0(void);
ASM void fn_80092748(void);
ASM void fn_80092798(void);
ASM void fn_80092888(void);
ASM void fn_80092984(void);
ASM void fn_800929D4(void);
ASM void fn_80092A98(void);
ASM void fn_80092AF0(void);
ASM void fn_80092B38(void);
ASM void fn_80092C2C(void);
ASM void fn_80092C94(void);
ASM void fn_80092EC8(void);
ASM void fn_80092EF0(void);
ASM void fn_80092EFC(void);
ASM void fn_80092F84(void);
ASM void fn_80092FD0(void);
ASM void fn_80093048(void);
ASM void fn_8009304C(void);
ASM void fn_80093060(void);
ASM void fn_80093108(void);
ASM void fn_80093198(void);
ASM void fn_80093280(void);
ASM void fn_800932AC(void);
ASM void fn_800932D4(void);
ASM void fn_80093338(void);
ASM void fn_80093340(void);

ASM void fn_8008E6A4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x4182001C  // beq .L_8008E6DC
    li r4, 0x0
    bl fn_80086EDC
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8008E6DC
    mr r3, r30
    bl dtor_80084580
L_8008E6DC:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008E6F8(void)
{
    nofralloc
    opword  0xC0028900  // lfs f0, lbl_8053B8A0@sda21(r0)
    li r0, 0x0
    stfs fp0, 0x0(r3)
    stfs fp0, 0x4(r3)
    stfs fp0, 0x8(r3)
    sth r0, 0xc(r3)
    blr
}

ASM void fn_8008E714(void)
{
    nofralloc
    li r0, 0x0
    stw r0, 0x0(r3)
    stw r0, 0x4(r3)
    stw r0, 0x8(r3)
    stw r0, 0x18(r3)
    stb r0, 0xc(r3)
    stb r0, 0xd(r3)
    stb r0, 0xe(r3)
    stb r0, 0xf(r3)
    stw r0, 0x1c(r3)
    stw r0, 0x20(r3)
    stw r0, 0x24(r3)
    stw r0, 0x28(r3)
    stw r0, 0x2c(r3)
    blr
}

ASM void fn_8008E750(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x4182001C  // beq .L_8008E788
    li r4, 0x0
    bl fn_80086EDC
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8008E788
    mr r3, r30
    bl dtor_80084580
L_8008E788:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008E7A4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r5, lbl_804994A0@ha
    stw r0, 0x14(r1)
    addi r0, r4, 0x1f
    clrrwi r0, r0, 5
    stw r31, 0xc(r1)
    mr r31, r3
    addi r3, r5, lbl_804994A0@l
    stw r3, 0x0(r31)
    stw r0, 0xc(r31)
    opword  0x880D8D98  // lbz r0, lbl_8053A958@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4182004C  // beq .L_8008E824
    lwz r4, 0xc(r31)
    li r5, 0x20
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    addi r4, r4, 0x80
    bl fn_800838C8
    stw r3, 0x4(r31)
    lwz r3, 0x4(r31)
    addi r0, r3, 0x80
    stw r0, 0x8(r31)
    lwz r3, 0x4(r31)
    lwz r4, 0x8(r31)
    lwz r5, 0xc(r31)
    bl GXInitFifoBase
    lwz r4, 0x8(r31)
    lwz r3, 0x4(r31)
    mr r5, r4
    bl fn_80059D2C
    opword  0x48000048  // b .L_8008E868
L_8008E824:
    lwz r4, 0xc(r31)
    li r5, 0x20
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    addi r4, r4, 0xa0
    bl fn_800838C8
    stw r3, 0x8(r31)
    lwz r3, 0x8(r31)
    addi r0, r3, 0x1f
    clrrwi r0, r0, 5
    stw r0, 0x8(r31)
    lwz r3, 0x8(r31)
    lwz r4, 0xc(r31)
    bl GXInit
    stw r3, 0x4(r31)
    li r0, 0x1
    opword  0x980D8D98  // stb r0, lbl_8053A958@sda21(r0)
    opword  0x93ED8D9C  // stw r31, lbl_8053A95C@sda21(r0)
L_8008E868:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008E880(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r26, 0x8(r1)
    mr. r26, r3
    mr r27, r4
    opword  0x4182008C  // beq .L_8008E924
    lis r3, lbl_804994A0@ha
    addi r0, r3, lbl_804994A0@l
    stw r0, 0x0(r26)
    opword  0x806D8D9C  // lwz r3, lbl_8053A95C@sda21(r0)
    lwz r3, 0x4(r3)
    bl fn_8005A048
    opword  0x3BED8DA0  // li r31, lbl_8053A960@sda21
    mr r30, r31
    mr r29, r31
    addi r28, r31, 0x1
    addi r31, r31, 0x4
    addi r30, r30, 0x3
    addi r29, r29, 0x2
L_8008E8D0:
    mr r4, r28
    mr r5, r29
    mr r6, r30
    mr r7, r31
    opword  0x386D8DA0  // li r3, lbl_8053A960@sda21
    bl fn_8005A144
    lbz r0, 0x0(r29)
    cmplwi r0, 0x0
    opword  0x4182FFE0  // beq .L_8008E8D0
    opword  0x800D8D9C  // lwz r0, lbl_8053A95C@sda21(r0)
    cmplw r0, r26
    opword  0x4082000C  // bne .L_8008E908
    li r0, 0x0
    opword  0x900D8D9C  // stw r0, lbl_8053A95C@sda21(r0)
L_8008E908:
    opword  0x806D8CE8  // lwz r3, lbl_8053A8A8@sda21(r0)
    lwz r4, 0x8(r26)
    bl fn_8008393C
    extsh. r0, r27
    opword  0x4081000C  // ble .L_8008E924
    mr r3, r26
    bl dtor_80084580
L_8008E924:
    mr r3, r26
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8008E93C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, lbl_804994B0@ha
    stw r0, 0x14(r1)
    addi r0, r4, lbl_804994B0@l
    li r4, 0x0
    stw r31, 0xc(r1)
    mr r31, r3
    stw r0, 0x0(r3)
    bl fn_8008E9B8
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008E97C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r5, lbl_804994B0@ha
    stw r0, 0x14(r1)
    addi r0, r5, lbl_804994B0@l
    stw r31, 0xc(r1)
    mr r31, r3
    stw r0, 0x0(r3)
    bl fn_8008E9B8
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008E9B8(void)
{
    nofralloc
    cmplwi r4, 0x0
    stw r4, 0x4(r3)
    opword  0x41820024  // beq .L_8008E9E4
    lhz r0, 0x0(r4)
    sth r0, 0xc(r3)
    lhz r0, 0xc(r3)
    slwi r5, r0, 2
    addi r0, r5, 0x4
    add r0, r4, r0
    stw r0, 0x8(r3)
    blr
L_8008E9E4:
    li r0, 0x0
    sth r0, 0xc(r3)
    stw r0, 0x8(r3)
    blr
}

ASM void fn_8008E9F4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lwz r5, 0x4(r3)
    stw r0, 0x24(r1)
    stmw r26, 0x8(r1)
    mr r27, r3
    mr r26, r4
    addi r28, r5, 0x4
    bl fn_8008EABC
    lwz r29, 0x4(r27)
    clrlwi r30, r3, 16
    lhz r31, 0xc(r27)
    li r27, 0x0
    opword  0x48000040  // b .L_8008EA68
L_8008EA2C:
    lhz r0, 0x0(r28)
    cmplw r0, r30
    opword  0x4082002C  // bne .L_8008EA60
    clrlslwi r3, r27, 16, 2
    mr r4, r26
    addi r0, r3, 0x6
    lhzx r0, r29, r0
    add r3, r29, r0
    bl strcmp
    cmpwi r3, 0x0
    opword  0x4082000C  // bne .L_8008EA60
    clrlwi r3, r27, 16
    opword  0x4800001C  // b .L_8008EA78
L_8008EA60:
    addi r28, r28, 0x4
    addi r27, r27, 0x1
L_8008EA68:
    clrlwi r0, r27, 16
    cmplw r0, r31
    opword  0x4180FFBC  // blt .L_8008EA2C
    li r3, -0x1
L_8008EA78:
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8008EA8C(void)
{
    nofralloc
    lhz r0, 0xc(r3)
    clrlwi r5, r4, 16
    cmplw r5, r0
    opword  0x4080001C  // bge .L_8008EAB4
    lwz r5, 0x4(r3)
    clrlslwi r0, r4, 16, 2
    add r3, r5, r0
    lhz r0, 0x6(r3)
    add r3, r5, r0
    blr
L_8008EAB4:
    li r3, 0x0
    blr
}

ASM void fn_8008EABC(void)
{
    nofralloc
    li r5, 0x0
    opword  0x48000018  // b .L_8008EAD8
L_8008EAC4:
    lbz r3, 0x0(r4)
    mulli r0, r5, 0x3
    addi r4, r4, 0x1
    extsb r3, r3
    add r5, r3, r0
L_8008EAD8:
    lbz r0, 0x0(r4)
    extsb. r0, r0
    opword  0x4082FFE4  // bne .L_8008EAC4
    clrlwi r3, r5, 16
    blr
}

ASM void fn_8008EAEC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_8008EB1C
    lis r5, lbl_804994B0@ha
    extsh. r0, r4
    addi r0, r5, lbl_804994B0@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_8008EB1C
    bl dtor_80084580
L_8008EB1C:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008EB34(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr. r31, r5
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    opword  0x40820020  // bne .L_8008EB78
    lis r3, lbl_8045EDB0@ha
    lis r5, lbl_8045EDC0@ha
    addi r3, r3, lbl_8045EDB0@l
    li r4, 0x23
    addi r5, r5, lbl_8045EDC0@l
    crclr 6
    bl OSPanic
L_8008EB78:
    stb r30, 0xc(r29)
    addi r0, r31, 0x20
    mr r3, r29
    lbz r4, 0x0(r31)
    stb r4, 0xd(r29)
    lbz r4, 0x1(r31)
    stb r4, 0x16(r29)
    lhz r4, 0x2(r31)
    sth r4, 0x14(r29)
    stw r0, 0x10(r29)
    lwz r4, 0x10(r29)
    lbz r5, 0xd(r29)
    lhz r6, 0x14(r29)
    bl fn_8005DCC8
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8008EBCC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stb r4, 0xc(r3)
    stb r5, 0xd(r3)
    stb r6, 0x16(r3)
    sth r7, 0x14(r3)
    stw r8, 0x10(r3)
    lwz r4, 0x10(r3)
    lbz r5, 0xd(r3)
    lhz r6, 0x14(r3)
    bl fn_8005DCC8
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008EC0C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    lhz r4, 0x14(r3)
    neg r0, r4
    or r0, r0, r4
    srwi. r31, r0, 31
    opword  0x4182000C  // beq .L_8008EC38
    lbz r4, 0xc(r3)
    bl fn_8005DD00
L_8008EC38:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008EC50(void)
{
    nofralloc
    li r0, 0x0
    stw r0, 0x4(r3)
    stw r0, 0x8(r3)
    stw r0, 0xc(r3)
    blr
}

ASM void fn_8008EC64(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    opword  0x800D8DA8  // lwz r0, lbl_8053A968@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820100  // bne .L_8008ED7C
    li r3, 0x134
    bl fn_80084370
    mr. r31, r3
    opword  0x418200EC  // beq .L_8008ED78
    li r0, 0x0
    lis r3, fn_8008EC50@ha
    stw r0, 0x4(r31)
    addi r4, r3, fn_8008EC50@l
    addi r3, r31, 0x64
    li r5, 0x0
    stw r0, 0x8(r31)
    li r6, 0x14
    li r7, 0x8
    stw r0, 0xc(r31)
    stw r0, 0x18(r31)
    stw r0, 0x1c(r31)
    stw r0, 0x20(r31)
    stw r0, 0x2c(r31)
    stw r0, 0x30(r31)
    stw r0, 0x34(r31)
    stw r0, 0x40(r31)
    stw r0, 0x44(r31)
    stw r0, 0x48(r31)
    stw r0, 0x54(r31)
    stw r0, 0x58(r31)
    stw r0, 0x5c(r31)
    bl __construct_array
    li r4, 0x1
    li r0, 0x0
    stb r4, 0x10c(r31)
    stb r4, 0x130(r31)
    stw r0, 0x108(r31)
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    lwz r3, 0x4(r3)
    lhz r6, 0x6(r3)
    cmpwi r6, 0x190
    opword  0x40810030  // ble .L_8008ED40
    li r0, 0x2
    li r5, 0x27
    stw r0, 0x114(r31)
    subi r4, r6, 0x28
    li r3, 0x232
    subi r0, r6, 0x46
    stw r5, 0x118(r31)
    stw r4, 0x11c(r31)
    stw r3, 0x120(r31)
    stw r0, 0x124(r31)
    opword  0x48000028  // b .L_8008ED64
L_8008ED40:
    stw r4, 0x114(r31)
    li r0, 0x27
    subi r4, r6, 0x14
    li r3, 0x232
    stw r0, 0x118(r31)
    subi r0, r6, 0x23
    stw r4, 0x11c(r31)
    stw r3, 0x120(r31)
    stw r0, 0x124(r31)
L_8008ED64:
    li r3, 0x1
    li r0, 0x0
    stw r3, 0x110(r31)
    stw r0, 0x128(r31)
    stw r0, 0x12c(r31)
L_8008ED78:
    opword  0x93ED8DA8  // stw r31, lbl_8053A968@sda21(r0)
L_8008ED7C:
    lwz r0, 0x14(r1)
    opword  0x806D8DA8  // lwz r3, lbl_8053A968@sda21(r0)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008ED94(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    opword  0x806D8DA8  // lwz r3, lbl_8053A968@sda21(r0)
    cmplwi r3, 0x0
    opword  0x41820014  // beq .L_8008EDBC
    opword  0x41820010  // beq .L_8008EDBC
    li r0, 0x0
    opword  0x900D8DA8  // stw r0, lbl_8053A968@sda21(r0)
    bl dtor_80084580
L_8008EDBC:
    li r0, 0x0
    opword  0x900D8DA8  // stw r0, lbl_8053A968@sda21(r0)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008EDD4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r4, 0xff
    li r3, 0x81
    stw r0, 0x14(r1)
    li r0, 0x1e
    stw r31, 0xc(r1)
    opword  0x83ED8DA8  // lwz r31, lbl_8053A968@sda21(r0)
    stb r4, 0x10(r31)
    stb r3, 0x11(r31)
    stb r0, 0x12(r31)
    bl OSGetTick
    stw r3, 0x0(r31)
    li r4, 0xff
    li r3, 0x81
    li r0, 0x1e
    opword  0x83ED8DA8  // lwz r31, lbl_8053A968@sda21(r0)
    stb r4, 0x38(r31)
    stb r3, 0x39(r31)
    stb r0, 0x3a(r31)
    bl OSGetTick
    stw r3, 0x28(r31)
    li r4, 0xff
    li r3, 0x81
    li r0, 0x1e
    opword  0x83ED8DA8  // lwz r31, lbl_8053A968@sda21(r0)
    stb r4, 0x24(r31)
    stb r3, 0x25(r31)
    stb r0, 0x26(r31)
    bl OSGetTick
    stw r3, 0x14(r31)
    li r4, 0xff
    li r3, 0x81
    li r0, 0x1e
    opword  0x83ED8DA8  // lwz r31, lbl_8053A968@sda21(r0)
    stb r4, 0x60(r31)
    stb r3, 0x61(r31)
    stb r0, 0x62(r31)
    bl OSGetTick
    stw r3, 0x50(r31)
    li r0, 0x0
    opword  0xC0228928  // lfs f1, lbl_8053B8C8@sda21(r0)
    opword  0x806D8DA8  // lwz r3, lbl_8053A968@sda21(r0)
    opword  0xC002892C  // lfs f0, lbl_8053B8CC@sda21(r0)
    stw r0, 0x104(r3)
    opword  0xD02D81F0  // stfs f1, lbl_80539DB0@sda21(r0)
    opword  0xD00D81F4  // stfs f0, lbl_80539DB4@sda21(r0)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008EEA4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    bl fn_8008EED8
    mr r3, r31
    bl fn_800906EC
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008EED8(void)
{
    nofralloc
    stwu r1, -0x180(r1)
    mflr r0
    stw r0, 0x184(r1)
    stfd fp31, 0x170(r1)
    psq_st fp31, 0x178(r1), 0, 0
    stmw r20, 0x140(r1)
    mr r30, r3
    lbz r0, 0x10c(r3)
    cmplwi r0, 0x0
    opword  0x418217D4  // beq .L_800906D0
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    li r27, 0x411a
    cmplwi r3, 0x0
    opword  0x4182001C  // beq .L_8008EF28
    lwz r3, 0x4(r3)
    lwz r0, 0x0(r3)
    extrwi r0, r0, 4, 26
    cmpwi r0, 0x1
    opword  0x40820008  // bne .L_8008EF28
    li r27, 0x4e20
L_8008EF28:
    opword  0x880D8DB0  // lbz r0, lbl_8053A970@sda21(r0)
    extsb. r0, r0
    opword  0x40820014  // bne .L_8008EF44
    li r3, 0x0
    li r0, 0x1
    opword  0x906D8DAC  // stw r3, lbl_8053A96C@sda21(r0)
    opword  0x980D8DB0  // stb r0, lbl_8053A970@sda21(r0)
L_8008EF44:
    lwz r5, 0x54(r30)
    li r4, 0x0
    opword  0xC00D81F0  // lfs f0, lbl_80539DB0@sda21(r0)
    lis r3, 0x4330
    opword  0xC1228940  // lfs f9, lbl_8053B8E0@sda21(r0)
    opword  0xC9028958  // lfd f8, lbl_8053B8F8@sda21(r0)
    opword  0xC0E28944  // lfs f7, lbl_8053B8E4@sda21(r0)
    opword  0xC8A28938  // lfd f5, lbl_8053B8D8@sda21(r0)
    opword  0xC0828948  // lfs f4, lbl_8053B8E8@sda21(r0)
    opword  0xC042894C  // lfs f2, lbl_8053B8EC@sda21(r0)
    opword  0xC0228960  // lfs f1, lbl_8053B900@sda21(r0)
    opword  0x48000050  // b .L_8008EFC0
L_8008EF74:
    stw r5, 0xfc(r1)
    lwz r0, 0x120(r30)
    stw r3, 0xf8(r1)
    xoris r0, r0, 0x8000
    lfd fp3, 0xf8(r1)
    stw r0, 0x104(r1)
    fsubs fp3, fp3, fp8
    stw r3, 0x100(r1)
    fmuls fp6, fp3, fp0
    lfd fp3, 0x100(r1)
    fsubs fp3, fp3, fp5
    fmuls fp6, fp9, fp6
    fsubs fp3, fp3, fp4
    fdivs fp6, fp6, fp7
    fcmpo cr0, fp6, fp3
    cror eq, lt, eq
    opword  0x41820014  // beq .L_8008EFC8
    fsubs fp0, fp0, fp2
    li r4, 0x1
L_8008EFC0:
    fcmpo cr0, fp0, fp1
    opword  0x4181FFB0  // bgt .L_8008EF74
L_8008EFC8:
    opword  0xC022892C  // lfs f1, lbl_8053B8CC@sda21(r0)
    fcmpo cr0, fp0, fp1
    cror eq, gt, eq
    opword  0x4082000C  // bne .L_8008EFE0
    li r0, 0x0
    opword  0x900D8DAC  // stw r0, lbl_8053A96C@sda21(r0)
L_8008EFE0:
    opword  0xC0228964  // lfs f1, lbl_8053B904@sda21(r0)
    fcmpo cr0, fp0, fp1
    opword  0x40810084  // ble .L_8008F06C
    opword  0xC002892C  // lfs f0, lbl_8053B8CC@sda21(r0)
    opword  0x4800007C  // b .L_8008F06C
L_8008EFF4:
    opword  0x806D8DAC  // lwz r3, lbl_8053A96C@sda21(r0)
    addi r0, r3, 0x1
    cmpwi r0, 0x1e
    opword  0x900D8DAC  // stw r0, lbl_8053A96C@sda21(r0)
    opword  0x4180007C  // blt .L_8008F080
    lis r3, 0x4330
    lwz r0, 0x120(r30)
    stw r5, 0x104(r1)
    xoris r0, r0, 0x8000
    opword  0xC8428958  // lfd f2, lbl_8053B8F8@sda21(r0)
    stw r3, 0x100(r1)
    opword  0xC0C28940  // lfs f6, lbl_8053B8E0@sda21(r0)
    lfd fp1, 0x100(r1)
    opword  0xC0828944  // lfs f4, lbl_8053B8E4@sda21(r0)
    fsubs fp1, fp1, fp2
    stw r0, 0xfc(r1)
    opword  0xC8628938  // lfd f3, lbl_8053B8D8@sda21(r0)
    stw r3, 0xf8(r1)
    fmuls fp5, fp1, fp0
    opword  0xC0228954  // lfs f1, lbl_8053B8F4@sda21(r0)
    lfd fp2, 0xf8(r1)
    fmuls fp5, fp6, fp5
    fsubs fp2, fp2, fp3
    fdivs fp3, fp5, fp4
    fsubs fp1, fp2, fp1
    fcmpo cr0, fp3, fp1
    opword  0x40800024  // bge .L_8008F080
    opword  0xC0228950  // lfs f1, lbl_8053B8F0@sda21(r0)
    fadds fp0, fp0, fp1
    opword  0x48000018  // b .L_8008F080
L_8008F06C:
    cmpwi r4, 0x0
    opword  0x40820010  // bne .L_8008F080
    opword  0xC022892C  // lfs f1, lbl_8053B8CC@sda21(r0)
    fcmpo cr0, fp0, fp1
    opword  0x4180FF78  // blt .L_8008EFF4
L_8008F080:
    opword  0xC0228940  // lfs f1, lbl_8053B8E0@sda21(r0)
    opword  0xD00D81F0  // stfs f0, lbl_80539DB0@sda21(r0)
    fmuls fp0, fp1, fp0
    lwz r5, 0x114(r30)
    lwz r3, 0xc(r30)
    fctiwz fp0, fp0
    lwz r4, 0x120(r30)
    addi r0, r3, 0x1
    slwi r25, r5, 3
    cmplwi r0, 0x10
    stw r0, 0xc(r30)
    stfd fp0, 0x100(r1)
    mulli r31, r5, 0xa
    slwi r24, r5, 1
    lwz r26, 0x104(r1)
    add r3, r4, r26
    subi r0, r3, 0x4
    divw r23, r0, r26
    opword  0x40800014  // bge .L_8008F0DC
    lwz r3, 0x4(r30)
    lwz r0, 0x8(r30)
    cmplw r3, r0
    opword  0x41800014  // blt .L_8008F0EC
L_8008F0DC:
    lwz r3, 0x4(r30)
    li r0, 0x0
    stw r3, 0x8(r30)
    stw r0, 0xc(r30)
L_8008F0EC:
    lwz r3, 0x20(r30)
    addi r0, r3, 0x1
    cmplwi r0, 0x10
    stw r0, 0x20(r30)
    opword  0x40800014  // bge .L_8008F110
    lwz r3, 0x18(r30)
    lwz r0, 0x1c(r30)
    cmplw r3, r0
    opword  0x41800014  // blt .L_8008F120
L_8008F110:
    lwz r3, 0x18(r30)
    li r0, 0x0
    stw r3, 0x1c(r30)
    stw r0, 0x20(r30)
L_8008F120:
    lwz r3, 0x34(r30)
    addi r0, r3, 0x1
    cmplwi r0, 0x10
    stw r0, 0x34(r30)
    opword  0x40800014  // bge .L_8008F144
    lwz r3, 0x2c(r30)
    lwz r0, 0x30(r30)
    cmplw r3, r0
    opword  0x41800014  // blt .L_8008F154
L_8008F144:
    lwz r3, 0x2c(r30)
    li r0, 0x0
    stw r3, 0x30(r30)
    stw r0, 0x34(r30)
L_8008F154:
    li r3, 0x0
    li r5, 0x32
    li r4, 0xc8
    stb r3, 0xf0(r1)
    lis r6, 0x4330
    xoris r0, r25, 0x8000
    stb r3, 0xf1(r1)
    addi r3, r1, 0xf4
    lwz r8, 0x2c(r30)
    stb r5, 0xf2(r1)
    lwz r7, 0x40(r30)
    stb r4, 0xf3(r1)
    lwz r5, 0x18(r30)
    lwz r4, 0xf0(r1)
    stw r6, 0x100(r1)
    subf r28, r7, r5
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    subf r22, r8, r28
    stw r4, 0xf4(r1)
    lwz r7, 0x118(r30)
    lwz r5, 0x11c(r30)
    lwz r4, 0x120(r30)
    xoris r7, r7, 0x8000
    xoris r5, r5, 0x8000
    stw r7, 0x104(r1)
    xoris r4, r4, 0x8000
    lfd fp0, 0x100(r1)
    stw r5, 0xfc(r1)
    fsubs fp1, fp0, fp4
    stw r6, 0xf8(r1)
    lfd fp0, 0xf8(r1)
    stw r4, 0x10c(r1)
    fsubs fp2, fp0, fp4
    stw r6, 0x108(r1)
    lfd fp0, 0x108(r1)
    stw r0, 0x114(r1)
    fsubs fp3, fp0, fp4
    stw r6, 0x110(r1)
    lfd fp0, 0x110(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093BD0
    li r3, 0x32
    li r6, 0x96
    li r5, 0xff
    stb r3, 0xe8(r1)
    lis r7, 0x4330
    xoris r0, r25, 0x8000
    stb r3, 0xe9(r1)
    addi r3, r1, 0xec
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    li r4, 0x6
    stb r6, 0xea(r1)
    stb r5, 0xeb(r1)
    lwz r5, 0xe8(r1)
    stw r7, 0x118(r1)
    stw r5, 0xec(r1)
    lwz r8, 0x118(r30)
    lwz r6, 0x11c(r30)
    lwz r5, 0x120(r30)
    xoris r8, r8, 0x8000
    xoris r6, r6, 0x8000
    stw r8, 0x11c(r1)
    xoris r5, r5, 0x8000
    lfd fp0, 0x118(r1)
    stw r6, 0x124(r1)
    fsubs fp1, fp0, fp4
    stw r7, 0x120(r1)
    lfd fp0, 0x120(r1)
    stw r5, 0x12c(r1)
    fsubs fp2, fp0, fp4
    stw r7, 0x128(r1)
    lfd fp0, 0x128(r1)
    stw r0, 0x134(r1)
    fsubs fp3, fp0, fp4
    stw r7, 0x130(r1)
    lfd fp0, 0x130(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093CE4
    lwz r0, 0x104(r30)
    cmpw r0, r23
    opword  0x40810090  // ble .L_8008F324
    li r5, 0x0
    li r3, 0xfa
    li r0, 0xc8
    stb r3, 0xe0(r1)
    lis r6, 0x4330
    addi r4, r25, 0x1
    stb r5, 0xe1(r1)
    addi r3, r1, 0xe4
    opword  0xC8628938  // lfd f3, lbl_8053B8D8@sda21(r0)
    stb r5, 0xe2(r1)
    opword  0xC0828960  // lfs f4, lbl_8053B900@sda21(r0)
    stb r0, 0xe3(r1)
    lwz r0, 0xe0(r1)
    stw r6, 0x130(r1)
    stw r0, 0xe4(r1)
    lwz r5, 0x11c(r30)
    lwz r7, 0x118(r30)
    lwz r0, 0x120(r30)
    add r4, r5, r4
    xoris r5, r7, 0x8000
    stw r6, 0x128(r1)
    xoris r4, r4, 0x8000
    xoris r0, r0, 0x8000
    stw r5, 0x134(r1)
    stw r4, 0x12c(r1)
    lfd fp1, 0x130(r1)
    lfd fp0, 0x128(r1)
    stw r0, 0x124(r1)
    fsubs fp1, fp1, fp3
    fsubs fp2, fp0, fp3
    stw r6, 0x120(r1)
    lfd fp0, 0x120(r1)
    fsubs fp3, fp0, fp3
    bl fn_80093BD0
    opword  0x48000094  // b .L_8008F3B4
L_8008F324:
    li r4, 0xfa
    li r3, 0x0
    li r0, 0xc8
    stb r3, 0xd8(r1)
    lis r7, 0x4330
    addi r5, r25, 0x1
    stb r4, 0xd9(r1)
    addi r3, r1, 0xdc
    opword  0xC8628938  // lfd f3, lbl_8053B8D8@sda21(r0)
    stb r4, 0xda(r1)
    opword  0xC0828960  // lfs f4, lbl_8053B900@sda21(r0)
    stb r0, 0xdb(r1)
    lwz r0, 0xd8(r1)
    stw r7, 0x130(r1)
    stw r0, 0xdc(r1)
    lwz r0, 0x104(r30)
    lwz r6, 0x11c(r30)
    mullw r4, r0, r26
    lwz r8, 0x118(r30)
    add r0, r6, r5
    stw r7, 0x128(r1)
    xoris r6, r8, 0x8000
    xoris r5, r0, 0x8000
    addi r0, r4, 0x2
    stw r6, 0x134(r1)
    xoris r0, r0, 0x8000
    stw r5, 0x12c(r1)
    lfd fp1, 0x130(r1)
    lfd fp0, 0x128(r1)
    stw r0, 0x124(r1)
    fsubs fp1, fp1, fp3
    fsubs fp2, fp0, fp3
    stw r7, 0x120(r1)
    lfd fp0, 0x120(r1)
    fsubs fp3, fp0, fp3
    bl fn_80093BD0
L_8008F3B4:
    lwz r3, 0x54(r30)
    lwz r0, 0x120(r30)
    mullw r3, r3, r26
    divwu r3, r3, r27
    cmpw r3, r0
    opword  0x40810088  // ble .L_8008F450
    li r4, 0xff
    li r3, 0x64
    li r0, 0x0
    stb r4, 0xd0(r1)
    lis r5, 0x4330
    opword  0xC8628938  // lfd f3, lbl_8053B8D8@sda21(r0)
    stb r3, 0xd1(r1)
    addi r3, r1, 0xd4
    opword  0xC0828960  // lfs f4, lbl_8053B900@sda21(r0)
    stb r0, 0xd2(r1)
    stb r4, 0xd3(r1)
    lwz r0, 0xd0(r1)
    stw r5, 0x130(r1)
    stw r0, 0xd4(r1)
    lwz r6, 0x118(r30)
    lwz r4, 0x11c(r30)
    lwz r0, 0x120(r30)
    xoris r6, r6, 0x8000
    xoris r4, r4, 0x8000
    stw r6, 0x134(r1)
    xoris r0, r0, 0x8000
    lfd fp0, 0x130(r1)
    stw r4, 0x12c(r1)
    fsubs fp1, fp0, fp3
    stw r5, 0x128(r1)
    lfd fp0, 0x128(r1)
    stw r0, 0x124(r1)
    fsubs fp2, fp0, fp3
    stw r5, 0x120(r1)
    lfd fp0, 0x120(r1)
    fsubs fp3, fp0, fp3
    bl fn_80093BD0
    opword  0x48000080  // b .L_8008F4CC
L_8008F450:
    li r6, 0xff
    li r0, 0x32
    li r4, 0x0
    stb r0, 0xc8(r1)
    lis r5, 0x4330
    xoris r0, r3, 0x8000
    stb r6, 0xc9(r1)
    addi r3, r1, 0xcc
    opword  0xC8628938  // lfd f3, lbl_8053B8D8@sda21(r0)
    stb r4, 0xca(r1)
    opword  0xC0828960  // lfs f4, lbl_8053B900@sda21(r0)
    stb r6, 0xcb(r1)
    lwz r4, 0xc8(r1)
    stw r5, 0x130(r1)
    stw r4, 0xcc(r1)
    lwz r6, 0x118(r30)
    lwz r4, 0x11c(r30)
    xoris r6, r6, 0x8000
    stw r5, 0x128(r1)
    xoris r4, r4, 0x8000
    stw r6, 0x134(r1)
    stw r4, 0x12c(r1)
    lfd fp1, 0x130(r1)
    lfd fp0, 0x128(r1)
    stw r0, 0x124(r1)
    fsubs fp1, fp1, fp3
    fsubs fp2, fp0, fp3
    stw r5, 0x120(r1)
    lfd fp0, 0x120(r1)
    fsubs fp3, fp0, fp3
    bl fn_80093BD0
L_8008F4CC:
    lwz r0, 0x110(r30)
    cmpwi r0, 0x0
    opword  0x408204E4  // bne .L_8008F9B8
    lwz r0, 0x18(r30)
    lis r5, 0x4330
    li r9, 0xff
    li r7, 0x50
    mullw r4, r0, r26
    lwz r3, 0x1c(r30)
    lwz r6, 0x118(r30)
    xoris r0, r24, 0x8000
    li r10, 0x64
    lwz r8, 0x11c(r30)
    divw r11, r4, r27
    lwz r4, 0x114(r30)
    addi r28, r6, 0x1
    stw r5, 0x130(r1)
    add r22, r8, r4
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    mullw r6, r3, r26
    xoris r4, r28, 0x8000
    xoris r3, r22, 0x8000
    stw r4, 0x134(r1)
    xoris r4, r11, 0x8000
    lfd fp0, 0x130(r1)
    li r8, 0x78
    stw r3, 0x12c(r1)
    divw r29, r6, r27
    fsubs fp1, fp0, fp4
    stw r5, 0x128(r1)
    addi r3, r1, 0x44
    lfd fp0, 0x128(r1)
    stw r4, 0x124(r1)
    stw r5, 0x120(r1)
    fsubs fp2, fp0, fp4
    lfd fp0, 0x120(r1)
    stw r0, 0x11c(r1)
    fsubs fp3, fp0, fp4
    stw r5, 0x118(r1)
    lfd fp0, 0x118(r1)
    stb r7, 0xc4(r1)
    fsubs fp4, fp0, fp4
    stb r9, 0xc5(r1)
    stb r7, 0xc6(r1)
    stb r9, 0xc7(r1)
    lwz r0, 0xc4(r1)
    stb r10, 0xc0(r1)
    stb r9, 0xc1(r1)
    stb r8, 0xc2(r1)
    stb r9, 0xc3(r1)
    stw r0, 0x44(r1)
    bl fn_80093BD0
    cmpwi r29, 0x0
    opword  0x418000D8  // blt .L_8008F678
    cmpwi r29, 0x6
    opword  0x40800070  // bge .L_8008F618
    lis r6, 0x4330
    xoris r3, r28, 0x8000
    xoris r5, r22, 0x8000
    xoris r4, r29, 0x8000
    xoris r0, r24, 0x8000
    stw r3, 0x134(r1)
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    addi r3, r1, 0x48
    stw r6, 0x130(r1)
    lwz r7, 0xc0(r1)
    lfd fp0, 0x130(r1)
    stw r5, 0x12c(r1)
    fsubs fp1, fp0, fp4
    stw r6, 0x128(r1)
    lfd fp0, 0x128(r1)
    stw r4, 0x124(r1)
    fsubs fp2, fp0, fp4
    stw r6, 0x120(r1)
    lfd fp0, 0x120(r1)
    stw r0, 0x11c(r1)
    fsubs fp3, fp0, fp4
    stw r6, 0x118(r1)
    lfd fp0, 0x118(r1)
    stw r7, 0x48(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093BD0
    opword  0x48000064  // b .L_8008F678
L_8008F618:
    subi r0, r29, 0x6
    lis r5, 0x4330
    add r0, r28, r0
    xoris r4, r22, 0x8000
    xoris r3, r0, 0x8000
    xoris r0, r24, 0x8000
    stw r3, 0x134(r1)
    addi r3, r1, 0x4c
    lwz r6, 0xc0(r1)
    stw r5, 0x130(r1)
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    lfd fp0, 0x130(r1)
    stw r4, 0x12c(r1)
    fsubs fp1, fp0, fp4
    opword  0xC0628930  // lfs f3, lbl_8053B8D0@sda21(r0)
    stw r5, 0x128(r1)
    lfd fp0, 0x128(r1)
    stw r0, 0x124(r1)
    fsubs fp2, fp0, fp4
    stw r5, 0x120(r1)
    lfd fp0, 0x120(r1)
    stw r6, 0x4c(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093BD0
L_8008F678:
    lwz r0, 0x2c(r30)
    lis r6, 0x4330
    li r11, 0xff
    li r9, 0x50
    mullw r5, r0, r26
    li r10, 0x64
    lwz r4, 0x30(r30)
    xoris r0, r24, 0x8000
    lwz r7, 0x114(r30)
    addi r3, r1, 0x38
    divw r12, r5, r27
    lwz r5, 0x118(r30)
    slwi r7, r7, 1
    stw r6, 0x130(r1)
    addi r29, r5, 0x1
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    mullw r8, r4, r26
    add r22, r22, r7
    xoris r7, r29, 0x8000
    stw r6, 0x128(r1)
    xoris r5, r22, 0x8000
    xoris r4, r12, 0x8000
    stw r7, 0x134(r1)
    divw r28, r8, r27
    stw r5, 0x12c(r1)
    lfd fp1, 0x130(r1)
    lfd fp0, 0x128(r1)
    stw r4, 0x124(r1)
    fsubs fp1, fp1, fp4
    stw r6, 0x120(r1)
    fsubs fp2, fp0, fp4
    lfd fp0, 0x120(r1)
    stw r0, 0x11c(r1)
    fsubs fp3, fp0, fp4
    stw r6, 0x118(r1)
    lfd fp0, 0x118(r1)
    stb r11, 0xbc(r1)
    fsubs fp4, fp0, fp4
    stb r9, 0xbd(r1)
    stb r9, 0xbe(r1)
    stb r11, 0xbf(r1)
    lwz r0, 0xbc(r1)
    stb r11, 0xb8(r1)
    stb r10, 0xb9(r1)
    stb r10, 0xba(r1)
    stb r11, 0xbb(r1)
    stw r0, 0x38(r1)
    bl fn_80093BD0
    cmpwi r28, 0x0
    opword  0x418000D8  // blt .L_8008F814
    cmpwi r28, 0x6
    opword  0x40800070  // bge .L_8008F7B4
    lis r6, 0x4330
    xoris r3, r29, 0x8000
    xoris r5, r22, 0x8000
    xoris r4, r28, 0x8000
    xoris r0, r24, 0x8000
    stw r3, 0x134(r1)
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    addi r3, r1, 0x3c
    stw r6, 0x130(r1)
    lwz r7, 0xb8(r1)
    lfd fp0, 0x130(r1)
    stw r5, 0x12c(r1)
    fsubs fp1, fp0, fp4
    stw r6, 0x128(r1)
    lfd fp0, 0x128(r1)
    stw r4, 0x124(r1)
    fsubs fp2, fp0, fp4
    stw r6, 0x120(r1)
    lfd fp0, 0x120(r1)
    stw r0, 0x11c(r1)
    fsubs fp3, fp0, fp4
    stw r6, 0x118(r1)
    lfd fp0, 0x118(r1)
    stw r7, 0x3c(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093BD0
    opword  0x48000064  // b .L_8008F814
L_8008F7B4:
    subi r0, r28, 0x6
    lis r5, 0x4330
    add r0, r29, r0
    xoris r4, r22, 0x8000
    xoris r3, r0, 0x8000
    xoris r0, r24, 0x8000
    stw r3, 0x134(r1)
    addi r3, r1, 0x40
    lwz r6, 0xb8(r1)
    stw r5, 0x130(r1)
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    lfd fp0, 0x130(r1)
    stw r4, 0x12c(r1)
    fsubs fp1, fp0, fp4
    opword  0xC0628930  // lfs f3, lbl_8053B8D0@sda21(r0)
    stw r5, 0x128(r1)
    lfd fp0, 0x128(r1)
    stw r0, 0x124(r1)
    fsubs fp2, fp0, fp4
    stw r5, 0x120(r1)
    lfd fp0, 0x120(r1)
    stw r6, 0x40(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093BD0
L_8008F814:
    lwz r0, 0x4(r30)
    lis r6, 0x4330
    li r11, 0xc8
    li r10, 0xff
    mullw r4, r0, r26
    li r9, 0xb4
    lwz r3, 0x8(r30)
    xoris r0, r24, 0x8000
    lwz r5, 0x114(r30)
    li r8, 0xa0
    divw r12, r4, r27
    lwz r4, 0x118(r30)
    slwi r5, r5, 1
    stw r6, 0x130(r1)
    addi r29, r4, 0x1
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    mullw r7, r3, r26
    add r22, r22, r5
    xoris r3, r29, 0x8000
    stw r6, 0x128(r1)
    xoris r5, r22, 0x8000
    xoris r4, r12, 0x8000
    stw r3, 0x134(r1)
    divw r28, r7, r27
    addi r3, r1, 0x2c
    stw r5, 0x12c(r1)
    lfd fp1, 0x130(r1)
    lfd fp0, 0x128(r1)
    stw r4, 0x124(r1)
    stw r6, 0x120(r1)
    fsubs fp1, fp1, fp4
    fsubs fp2, fp0, fp4
    lfd fp0, 0x120(r1)
    stw r0, 0x11c(r1)
    fsubs fp3, fp0, fp4
    stw r6, 0x118(r1)
    lfd fp0, 0x118(r1)
    stb r9, 0xb4(r1)
    fsubs fp4, fp0, fp4
    stb r9, 0xb5(r1)
    stb r8, 0xb6(r1)
    stb r10, 0xb7(r1)
    lwz r0, 0xb4(r1)
    stb r11, 0xb0(r1)
    stb r11, 0xb1(r1)
    stb r11, 0xb2(r1)
    stb r10, 0xb3(r1)
    stw r0, 0x2c(r1)
    bl fn_80093BD0
    cmpwi r28, 0x0
    opword  0x4180062C  // blt .L_8008FF08
    cmpwi r28, 0x6
    opword  0x40800070  // bge .L_8008F954
    lis r6, 0x4330
    xoris r3, r29, 0x8000
    xoris r5, r22, 0x8000
    xoris r4, r28, 0x8000
    xoris r0, r24, 0x8000
    stw r3, 0x134(r1)
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    addi r3, r1, 0x30
    stw r6, 0x130(r1)
    lwz r7, 0xb0(r1)
    lfd fp0, 0x130(r1)
    stw r5, 0x12c(r1)
    fsubs fp1, fp0, fp4
    stw r6, 0x128(r1)
    lfd fp0, 0x128(r1)
    stw r4, 0x124(r1)
    fsubs fp2, fp0, fp4
    stw r6, 0x120(r1)
    lfd fp0, 0x120(r1)
    stw r0, 0x11c(r1)
    fsubs fp3, fp0, fp4
    stw r6, 0x118(r1)
    lfd fp0, 0x118(r1)
    stw r7, 0x30(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093BD0
    opword  0x480005B8  // b .L_8008FF08
L_8008F954:
    subi r0, r28, 0x6
    lis r5, 0x4330
    add r0, r29, r0
    xoris r4, r22, 0x8000
    xoris r3, r0, 0x8000
    xoris r0, r24, 0x8000
    stw r3, 0x134(r1)
    addi r3, r1, 0x34
    lwz r6, 0xb0(r1)
    stw r5, 0x130(r1)
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    lfd fp0, 0x130(r1)
    stw r4, 0x12c(r1)
    fsubs fp1, fp0, fp4
    opword  0xC0628930  // lfs f3, lbl_8053B8D0@sda21(r0)
    stw r5, 0x128(r1)
    lfd fp0, 0x128(r1)
    stw r0, 0x124(r1)
    fsubs fp2, fp0, fp4
    stw r5, 0x120(r1)
    lfd fp0, 0x120(r1)
    stw r6, 0x34(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093BD0
    opword  0x48000554  // b .L_8008FF08
L_8008F9B8:
    mullw r0, r28, r26
    lis r6, 0x4330
    li r10, 0x50
    lwz r4, 0x118(r30)
    li r9, 0xff
    lwz r7, 0x11c(r30)
    divw r3, r0, r27
    neg r8, r26
    lwz r5, 0x114(r30)
    addi r20, r4, 0x1
    xoris r0, r24, 0x8000
    stw r6, 0x130(r1)
    add r21, r7, r5
    xoris r7, r20, 0x8000
    xoris r5, r21, 0x8000
    xoris r4, r3, 0x8000
    stw r7, 0x134(r1)
    divw r29, r8, r27
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    addi r3, r1, 0x20
    lfd fp0, 0x130(r1)
    stw r5, 0x12c(r1)
    fsubs fp1, fp0, fp4
    stw r6, 0x128(r1)
    lfd fp0, 0x128(r1)
    stw r4, 0x124(r1)
    fsubs fp2, fp0, fp4
    stw r6, 0x120(r1)
    lfd fp0, 0x120(r1)
    stw r0, 0x11c(r1)
    fsubs fp3, fp0, fp4
    stw r6, 0x118(r1)
    lfd fp0, 0x118(r1)
    stb r10, 0xac(r1)
    fsubs fp4, fp0, fp4
    stb r9, 0xad(r1)
    stb r10, 0xae(r1)
    stb r9, 0xaf(r1)
    lwz r0, 0xac(r1)
    stb r10, 0xa8(r1)
    stb r9, 0xa9(r1)
    stb r10, 0xaa(r1)
    stb r9, 0xab(r1)
    stw r0, 0x20(r1)
    bl fn_80093BD0
    cmpwi r29, 0x0
    opword  0x418000D8  // blt .L_8008FB48
    cmpwi r29, 0x6
    opword  0x40800070  // bge .L_8008FAE8
    lis r6, 0x4330
    xoris r3, r20, 0x8000
    xoris r5, r21, 0x8000
    xoris r4, r29, 0x8000
    xoris r0, r24, 0x8000
    stw r3, 0x134(r1)
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    addi r3, r1, 0x24
    stw r6, 0x130(r1)
    lwz r7, 0xa8(r1)
    lfd fp0, 0x130(r1)
    stw r5, 0x12c(r1)
    fsubs fp1, fp0, fp4
    stw r6, 0x128(r1)
    lfd fp0, 0x128(r1)
    stw r4, 0x124(r1)
    fsubs fp2, fp0, fp4
    stw r6, 0x120(r1)
    lfd fp0, 0x120(r1)
    stw r0, 0x11c(r1)
    fsubs fp3, fp0, fp4
    stw r6, 0x118(r1)
    lfd fp0, 0x118(r1)
    stw r7, 0x24(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093BD0
    opword  0x48000064  // b .L_8008FB48
L_8008FAE8:
    subi r0, r29, 0x6
    lis r5, 0x4330
    add r0, r20, r0
    xoris r4, r21, 0x8000
    xoris r3, r0, 0x8000
    xoris r0, r24, 0x8000
    stw r3, 0x134(r1)
    addi r3, r1, 0x28
    lwz r6, 0xa8(r1)
    stw r5, 0x130(r1)
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    lfd fp0, 0x130(r1)
    stw r4, 0x12c(r1)
    fsubs fp1, fp0, fp4
    opword  0xC0628930  // lfs f3, lbl_8053B8D0@sda21(r0)
    stw r5, 0x128(r1)
    lfd fp0, 0x128(r1)
    stw r0, 0x124(r1)
    fsubs fp2, fp0, fp4
    stw r5, 0x120(r1)
    lfd fp0, 0x120(r1)
    stw r6, 0x28(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093BD0
L_8008FB48:
    li r7, 0x0
    li r8, 0xff
    stb r7, 0xa0(r1)
    lis r6, 0x4330
    mullw r4, r28, r26
    xoris r5, r21, 0x8000
    stb r8, 0xa1(r1)
    xoris r0, r24, 0x8000
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    addi r3, r1, 0xa4
    stb r7, 0xa2(r1)
    divwu r7, r4, r27
    stb r8, 0xa3(r1)
    lwz r4, 0xa0(r1)
    stw r6, 0x130(r1)
    stw r4, 0xa4(r1)
    lwz r4, 0x40(r30)
    mullw r4, r4, r26
    add r7, r20, r7
    stw r5, 0x12c(r1)
    xoris r5, r7, 0x8000
    stw r5, 0x134(r1)
    divwu r4, r4, r27
    stw r6, 0x128(r1)
    lfd fp1, 0x130(r1)
    lfd fp0, 0x128(r1)
    stw r6, 0x120(r1)
    fsubs fp1, fp1, fp4
    xoris r4, r4, 0x8000
    stw r0, 0x11c(r1)
    fsubs fp2, fp0, fp4
    stw r4, 0x124(r1)
    stw r6, 0x118(r1)
    lfd fp3, 0x120(r1)
    lfd fp0, 0x118(r1)
    fsubs fp3, fp3, fp4
    fsubs fp4, fp0, fp4
    bl fn_80093BD0
    lwz r0, 0x18(r30)
    lis r5, 0x4330
    lwz r4, 0x2c(r30)
    li r8, 0xff
    mullw r10, r0, r26
    li r7, 0x50
    lwz r6, 0x114(r30)
    xoris r0, r24, 0x8000
    stw r5, 0x110(r1)
    addi r3, r1, 0x14
    mullw r9, r22, r26
    slwi r6, r6, 1
    stw r5, 0x108(r1)
    add r21, r21, r6
    opword  0xC8228938  // lfd f1, lbl_8053B8D8@sda21(r0)
    stw r5, 0x100(r1)
    mullw r6, r4, r26
    xoris r4, r21, 0x8000
    stw r4, 0x10c(r1)
    lfd fp0, 0x108(r1)
    stw r0, 0xfc(r1)
    divwu r0, r10, r27
    stw r5, 0xf8(r1)
    fsubs fp2, fp0, fp1
    lfd fp0, 0xf8(r1)
    stb r8, 0x9c(r1)
    fsubs fp4, fp0, fp1
    divw r6, r6, r27
    add r22, r20, r0
    stb r7, 0x9d(r1)
    stb r7, 0x9e(r1)
    stb r8, 0x9f(r1)
    lwz r4, 0x9c(r1)
    divwu r5, r9, r27
    xoris r0, r6, 0x8000
    stw r0, 0x104(r1)
    lfd fp0, 0x100(r1)
    stb r8, 0x98(r1)
    fsubs fp3, fp0, fp1
    add r20, r20, r5
    stb r7, 0x99(r1)
    xoris r0, r20, 0x8000
    stw r0, 0x114(r1)
    lfd fp0, 0x110(r1)
    stb r7, 0x9a(r1)
    fsubs fp1, fp0, fp1
    stb r8, 0x9b(r1)
    stw r4, 0x14(r1)
    bl fn_80093BD0
    cmpwi r29, 0x0
    opword  0x418000D8  // blt .L_8008FD80
    cmpwi r29, 0x6
    opword  0x40800070  // bge .L_8008FD20
    lis r6, 0x4330
    xoris r3, r20, 0x8000
    xoris r5, r21, 0x8000
    xoris r4, r29, 0x8000
    xoris r0, r24, 0x8000
    stw r3, 0x134(r1)
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    addi r3, r1, 0x18
    stw r6, 0x130(r1)
    lwz r7, 0x98(r1)
    lfd fp0, 0x130(r1)
    stw r5, 0x12c(r1)
    fsubs fp1, fp0, fp4
    stw r6, 0x128(r1)
    lfd fp0, 0x128(r1)
    stw r4, 0x124(r1)
    fsubs fp2, fp0, fp4
    stw r6, 0x120(r1)
    lfd fp0, 0x120(r1)
    stw r0, 0x11c(r1)
    fsubs fp3, fp0, fp4
    stw r6, 0x118(r1)
    lfd fp0, 0x118(r1)
    stw r7, 0x18(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093BD0
    opword  0x48000064  // b .L_8008FD80
L_8008FD20:
    subi r0, r29, 0x6
    lis r5, 0x4330
    add r0, r20, r0
    xoris r4, r21, 0x8000
    xoris r3, r0, 0x8000
    xoris r0, r24, 0x8000
    stw r3, 0x134(r1)
    addi r3, r1, 0x1c
    lwz r6, 0x98(r1)
    stw r5, 0x130(r1)
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    lfd fp0, 0x130(r1)
    stw r4, 0x12c(r1)
    fsubs fp1, fp0, fp4
    opword  0xC0628930  // lfs f3, lbl_8053B8D0@sda21(r0)
    stw r5, 0x128(r1)
    lfd fp0, 0x128(r1)
    stw r0, 0x124(r1)
    fsubs fp2, fp0, fp4
    stw r5, 0x120(r1)
    lfd fp0, 0x120(r1)
    stw r6, 0x1c(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093BD0
L_8008FD80:
    lwz r0, 0x4(r30)
    lis r6, 0x4330
    li r9, 0xb4
    li r8, 0xa0
    mullw r4, r0, r26
    li r7, 0xff
    lwz r5, 0x114(r30)
    xoris r3, r22, 0x8000
    xoris r0, r24, 0x8000
    stw r3, 0x134(r1)
    divw r10, r4, r27
    slwi r4, r5, 1
    stw r6, 0x130(r1)
    addi r3, r1, 0x8
    add r21, r21, r4
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    xoris r5, r21, 0x8000
    xoris r4, r10, 0x8000
    lfd fp0, 0x130(r1)
    stw r5, 0x12c(r1)
    fsubs fp1, fp0, fp4
    stw r6, 0x128(r1)
    lfd fp0, 0x128(r1)
    stw r4, 0x124(r1)
    fsubs fp2, fp0, fp4
    stw r6, 0x120(r1)
    lfd fp0, 0x120(r1)
    stw r0, 0x11c(r1)
    fsubs fp3, fp0, fp4
    stw r6, 0x118(r1)
    lfd fp0, 0x118(r1)
    stb r9, 0x94(r1)
    fsubs fp4, fp0, fp4
    stb r9, 0x95(r1)
    stb r8, 0x96(r1)
    stb r7, 0x97(r1)
    lwz r0, 0x94(r1)
    stb r9, 0x90(r1)
    stb r9, 0x91(r1)
    stb r8, 0x92(r1)
    stb r7, 0x93(r1)
    stw r0, 0x8(r1)
    bl fn_80093BD0
    cmpwi r29, 0x0
    opword  0x418000D8  // blt .L_8008FF08
    cmpwi r29, 0x6
    opword  0x40800070  // bge .L_8008FEA8
    lis r6, 0x4330
    xoris r3, r22, 0x8000
    xoris r5, r21, 0x8000
    xoris r4, r29, 0x8000
    xoris r0, r24, 0x8000
    stw r3, 0x134(r1)
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    addi r3, r1, 0xc
    stw r6, 0x130(r1)
    lwz r7, 0x90(r1)
    lfd fp0, 0x130(r1)
    stw r5, 0x12c(r1)
    fsubs fp1, fp0, fp4
    stw r6, 0x128(r1)
    lfd fp0, 0x128(r1)
    stw r4, 0x124(r1)
    fsubs fp2, fp0, fp4
    stw r6, 0x120(r1)
    lfd fp0, 0x120(r1)
    stw r0, 0x11c(r1)
    fsubs fp3, fp0, fp4
    stw r6, 0x118(r1)
    lfd fp0, 0x118(r1)
    stw r7, 0xc(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093BD0
    opword  0x48000064  // b .L_8008FF08
L_8008FEA8:
    subi r0, r29, 0x6
    lis r5, 0x4330
    add r0, r22, r0
    xoris r4, r21, 0x8000
    xoris r3, r0, 0x8000
    xoris r0, r24, 0x8000
    stw r3, 0x134(r1)
    addi r3, r1, 0x10
    lwz r6, 0x90(r1)
    stw r5, 0x130(r1)
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    lfd fp0, 0x130(r1)
    stw r4, 0x12c(r1)
    fsubs fp1, fp0, fp4
    opword  0xC0628930  // lfs f3, lbl_8053B8D0@sda21(r0)
    stw r5, 0x128(r1)
    lfd fp0, 0x128(r1)
    stw r0, 0x124(r1)
    fsubs fp2, fp0, fp4
    stw r5, 0x120(r1)
    lfd fp0, 0x120(r1)
    stw r6, 0x10(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093BD0
L_8008FF08:
    lis r3, 0x6666
    opword  0xCBE28938  // lfd f31, lbl_8053B8D8@sda21(r0)
    mr r28, r26
    li r20, 0x1
    addi r29, r3, 0x6667
    lis r21, 0x4330
    opword  0x480000E4  // b .L_80090004
L_8008FF24:
    mulhw r0, r29, r20
    lwz r3, 0x118(r30)
    addi r5, r28, 0x1
    add r5, r3, r5
    srawi r0, r0, 1
    srwi r3, r0, 31
    add r0, r0, r3
    mulli r0, r0, 0x5
    subf. r0, r0, r20
    opword  0x41820024  // beq .L_8008FF6C
    li r3, 0x64
    li r0, 0xff
    stb r3, 0x88(r1)
    addi r4, r1, 0x88
    stb r3, 0x89(r1)
    stb r0, 0x8a(r1)
    stb r0, 0x8b(r1)
    opword  0x48000020  // b .L_8008FF88
L_8008FF6C:
    li r0, 0xff
    li r3, 0xb4
    stb r3, 0x84(r1)
    addi r4, r1, 0x84
    stb r0, 0x85(r1)
    stb r0, 0x86(r1)
    stb r0, 0x87(r1)
L_8008FF88:
    lwz r0, 0x0(r4)
    xoris r6, r5, 0x8000
    stw r6, 0x134(r1)
    addi r3, r1, 0x8c
    li r4, 0xc
    stw r0, 0x8c(r1)
    lwz r5, 0x11c(r30)
    lwz r7, 0x114(r30)
    add r0, r5, r25
    stw r21, 0x130(r1)
    add r5, r5, r7
    subf r0, r7, r0
    stw r21, 0x128(r1)
    xoris r5, r5, 0x8000
    lfd fp0, 0x130(r1)
    xoris r0, r0, 0x8000
    stw r5, 0x12c(r1)
    fsubs fp1, fp0, fp31
    lfd fp0, 0x128(r1)
    stw r6, 0x124(r1)
    fsubs fp2, fp0, fp31
    stw r21, 0x120(r1)
    lfd fp0, 0x120(r1)
    stw r0, 0x11c(r1)
    fsubs fp3, fp0, fp31
    stw r21, 0x118(r1)
    lfd fp0, 0x118(r1)
    fsubs fp4, fp0, fp31
    bl fn_80093A68
    add r28, r28, r26
    addi r20, r20, 0x1
L_80090004:
    cmpw r20, r23
    opword  0x4180FF1C  // blt .L_8008FF24
    li r3, 0x4
    mr r6, r30
    li r0, 0x0
    li r7, 0x0
    li r4, 0x0
    mtctr r3
L_80090024:
    lwz r3, 0x70(r6)
    addi r3, r3, 0x1
    cmplwi r3, 0x10
    stw r3, 0x70(r6)
    opword  0x40800014  // bge .L_80090048
    lwz r5, 0x68(r6)
    lwz r3, 0x6c(r6)
    cmplw r5, r3
    opword  0x40810010  // ble .L_80090054
L_80090048:
    lwz r3, 0x68(r6)
    stw r3, 0x6c(r6)
    stw r4, 0x70(r6)
L_80090054:
    lwz r3, 0x6c(r6)
    cmplw r3, r0
    opword  0x40810008  // ble .L_80090064
    mr r0, r3
L_80090064:
    lwz r3, 0x84(r6)
    addi r3, r3, 0x1
    cmplwi r3, 0x10
    stw r3, 0x84(r6)
    opword  0x40800014  // bge .L_80090088
    lwz r5, 0x7c(r6)
    lwz r3, 0x80(r6)
    cmplw r5, r3
    opword  0x40810010  // ble .L_80090094
L_80090088:
    lwz r3, 0x7c(r6)
    stw r3, 0x80(r6)
    stw r4, 0x84(r6)
L_80090094:
    lwz r3, 0x80(r6)
    cmplw r3, r0
    opword  0x40810008  // ble .L_800900A4
    mr r0, r3
L_800900A4:
    addi r6, r6, 0x28
    addi r7, r7, 0x1
    opword  0x4200FF78  // bdnz .L_80090024
    neg r3, r0
    or r3, r3, r0
    srwi r3, r3, 31
    cmplwi r3, 0x1
    opword  0x40820608  // bne .L_800906C8
    opword  0x886D8DB8  // lbz r3, lbl_8053A978@sda21(r0)
    extsb. r3, r3
    opword  0x40820014  // bne .L_800900E0
    li r4, 0x0
    li r3, 0x1
    opword  0x908D8DB4  // stw r4, lbl_8053A974@sda21(r0)
    opword  0x986D8DB8  // stb r3, lbl_8053A978@sda21(r0)
L_800900E0:
    opword  0xC00D81F4  // lfs f0, lbl_80539DB4@sda21(r0)
    li r5, 0x0
    opword  0xC1228940  // lfs f9, lbl_8053B8E0@sda21(r0)
    lis r4, 0x4330
    opword  0xC9028958  // lfd f8, lbl_8053B8F8@sda21(r0)
    opword  0xC0E28944  // lfs f7, lbl_8053B8E4@sda21(r0)
    opword  0xC8A28938  // lfd f5, lbl_8053B8D8@sda21(r0)
    opword  0xC0828948  // lfs f4, lbl_8053B8E8@sda21(r0)
    opword  0xC042894C  // lfs f2, lbl_8053B8EC@sda21(r0)
    opword  0xC0228960  // lfs f1, lbl_8053B900@sda21(r0)
    opword  0x48000050  // b .L_80090158
L_8009010C:
    stw r0, 0x134(r1)
    lwz r3, 0x120(r30)
    stw r4, 0x130(r1)
    xoris r3, r3, 0x8000
    lfd fp3, 0x130(r1)
    stw r3, 0x12c(r1)
    fsubs fp3, fp3, fp8
    stw r4, 0x128(r1)
    fmuls fp6, fp3, fp0
    lfd fp3, 0x128(r1)
    fsubs fp3, fp3, fp5
    fmuls fp6, fp9, fp6
    fsubs fp3, fp3, fp4
    fdivs fp6, fp6, fp7
    fcmpo cr0, fp6, fp3
    cror eq, lt, eq
    opword  0x41820014  // beq .L_80090160
    fsubs fp0, fp0, fp2
    li r5, 0x1
L_80090158:
    fcmpo cr0, fp0, fp1
    opword  0x4181FFB0  // bgt .L_8009010C
L_80090160:
    opword  0xC022892C  // lfs f1, lbl_8053B8CC@sda21(r0)
    fcmpo cr0, fp0, fp1
    cror eq, gt, eq
    opword  0x4082000C  // bne .L_80090178
    li r3, 0x0
    opword  0x906D8DB4  // stw r3, lbl_8053A974@sda21(r0)
L_80090178:
    opword  0xC0228964  // lfs f1, lbl_8053B904@sda21(r0)
    fcmpo cr0, fp0, fp1
    opword  0x40810084  // ble .L_80090204
    opword  0xC002892C  // lfs f0, lbl_8053B8CC@sda21(r0)
    opword  0x4800007C  // b .L_80090204
L_8009018C:
    opword  0x806D8DB4  // lwz r3, lbl_8053A974@sda21(r0)
    addi r3, r3, 0x1
    cmpwi r3, 0x1e
    opword  0x906D8DB4  // stw r3, lbl_8053A974@sda21(r0)
    opword  0x4180007C  // blt .L_80090218
    lis r4, 0x4330
    lwz r3, 0x120(r30)
    stw r0, 0x134(r1)
    xoris r0, r3, 0x8000
    opword  0xC8428958  // lfd f2, lbl_8053B8F8@sda21(r0)
    stw r4, 0x130(r1)
    opword  0xC0C28940  // lfs f6, lbl_8053B8E0@sda21(r0)
    lfd fp1, 0x130(r1)
    opword  0xC0828944  // lfs f4, lbl_8053B8E4@sda21(r0)
    fsubs fp1, fp1, fp2
    stw r0, 0x12c(r1)
    opword  0xC8628938  // lfd f3, lbl_8053B8D8@sda21(r0)
    stw r4, 0x128(r1)
    fmuls fp5, fp1, fp0
    opword  0xC0228954  // lfs f1, lbl_8053B8F4@sda21(r0)
    lfd fp2, 0x128(r1)
    fmuls fp5, fp6, fp5
    fsubs fp2, fp2, fp3
    fdivs fp3, fp5, fp4
    fsubs fp1, fp2, fp1
    fcmpo cr0, fp3, fp1
    opword  0x40800024  // bge .L_80090218
    opword  0xC0228950  // lfs f1, lbl_8053B8F0@sda21(r0)
    fadds fp0, fp0, fp1
    opword  0x48000018  // b .L_80090218
L_80090204:
    cmpwi r5, 0x0
    opword  0x40820010  // bne .L_80090218
    opword  0xC022892C  // lfs f1, lbl_8053B8CC@sda21(r0)
    fcmpo cr0, fp0, fp1
    opword  0x4180FF78  // blt .L_8009018C
L_80090218:
    li r0, 0x0
    li r3, 0x32
    li r4, 0xc8
    stb r0, 0x7c(r1)
    lis r6, 0x4330
    opword  0xC0228940  // lfs f1, lbl_8053B8E0@sda21(r0)
    stb r0, 0x7d(r1)
    xoris r0, r31, 0x8000
    fmuls fp1, fp1, fp0
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    stb r3, 0x7e(r1)
    addi r3, r1, 0x80
    stb r4, 0x7f(r1)
    fctiwz fp1, fp1
    lwz r4, 0x7c(r1)
    opword  0xD00D81F4  // stfs f0, lbl_80539DB4@sda21(r0)
    stw r4, 0x80(r1)
    lwz r7, 0x118(r30)
    lwz r5, 0x124(r30)
    lwz r4, 0x120(r30)
    xoris r7, r7, 0x8000
    xoris r5, r5, 0x8000
    stfd fp1, 0x130(r1)
    xoris r4, r4, 0x8000
    stw r7, 0x12c(r1)
    lwz r20, 0x134(r1)
    stw r6, 0x128(r1)
    lfd fp0, 0x128(r1)
    stw r5, 0x124(r1)
    fsubs fp1, fp0, fp4
    stw r6, 0x120(r1)
    lfd fp0, 0x120(r1)
    stw r4, 0x11c(r1)
    fsubs fp2, fp0, fp4
    stw r6, 0x118(r1)
    lfd fp0, 0x118(r1)
    stw r0, 0x114(r1)
    fsubs fp3, fp0, fp4
    stw r6, 0x110(r1)
    lfd fp0, 0x110(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093BD0
    li r3, 0x32
    li r6, 0x96
    li r5, 0xff
    stb r3, 0x74(r1)
    lis r7, 0x4330
    xoris r0, r31, 0x8000
    stb r3, 0x75(r1)
    addi r3, r1, 0x78
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    li r4, 0x6
    stb r6, 0x76(r1)
    stb r5, 0x77(r1)
    lwz r5, 0x74(r1)
    stw r7, 0x108(r1)
    stw r5, 0x78(r1)
    lwz r8, 0x118(r30)
    lwz r6, 0x124(r30)
    lwz r5, 0x120(r30)
    xoris r8, r8, 0x8000
    xoris r6, r6, 0x8000
    stw r8, 0x10c(r1)
    xoris r5, r5, 0x8000
    lfd fp0, 0x108(r1)
    stw r6, 0x104(r1)
    fsubs fp1, fp0, fp4
    stw r7, 0x100(r1)
    lfd fp0, 0x100(r1)
    stw r5, 0xfc(r1)
    fsubs fp2, fp0, fp4
    stw r7, 0xf8(r1)
    lfd fp0, 0xf8(r1)
    stw r0, 0x13c(r1)
    fsubs fp3, fp0, fp4
    stw r7, 0x138(r1)
    lfd fp0, 0x138(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093CE4
    li r21, 0x0
    mr r28, r30
L_8009035C:
    lwz r3, 0x70(r28)
    addi r0, r3, 0x1
    cmplwi r0, 0x10
    stw r0, 0x70(r28)
    opword  0x40800014  // bge .L_80090380
    lwz r3, 0x68(r28)
    lwz r0, 0x6c(r28)
    cmplw r3, r0
    opword  0x40810014  // ble .L_80090390
L_80090380:
    lwz r3, 0x68(r28)
    li r0, 0x0
    stw r3, 0x6c(r28)
    stw r0, 0x70(r28)
L_80090390:
    lwz r3, 0x68(r28)
    cmplwi r3, 0x0
    opword  0x40820010  // bne .L_800903A8
    lwz r0, 0x6c(r28)
    cmplwi r0, 0x0
    opword  0x41820200  // beq .L_800905A4
L_800903A8:
    mullw r0, r3, r20
    lis r7, 0x4330
    lwz r4, 0x6c(r28)
    li r3, 0x0
    li r5, 0xff
    stw r7, 0x138(r1)
    stw r3, 0x68(r28)
    divwu r0, r0, r27
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    addi r3, r1, 0x70
    lbz r10, 0x76(r28)
    lbz r9, 0x75(r28)
    lbz r6, 0x74(r28)
    mullw r8, r4, r20
    xoris r4, r0, 0x8000
    stb r6, 0x6c(r1)
    stb r9, 0x6d(r1)
    stb r10, 0x6e(r1)
    divwu r22, r8, r27
    stb r5, 0x6f(r1)
    lwz r0, 0x6c(r1)
    stw r7, 0x130(r1)
    stw r0, 0x70(r1)
    lwz r9, 0x114(r30)
    mullw r5, r21, r9
    lwz r8, 0x118(r30)
    xoris r0, r9, 0x8000
    lwz r6, 0x124(r30)
    addi r8, r8, 0x1
    stw r4, 0x12c(r1)
    add r4, r9, r5
    xoris r5, r8, 0x8000
    add r4, r6, r4
    stw r5, 0x13c(r1)
    xoris r4, r4, 0x8000
    stw r4, 0x134(r1)
    lfd fp0, 0x138(r1)
    stw r7, 0x128(r1)
    lfd fp2, 0x130(r1)
    fsubs fp1, fp0, fp4
    lfd fp0, 0x128(r1)
    stw r0, 0x124(r1)
    fsubs fp2, fp2, fp4
    fsubs fp3, fp0, fp4
    stw r7, 0x120(r1)
    lfd fp0, 0x120(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093BD0
    cmplwi r22, 0x3
    opword  0x408000A4  // bge .L_80090510
    li r5, 0xff
    li r3, 0xc8
    li r0, 0x32
    stb r5, 0x64(r1)
    lis r7, 0x4330
    xoris r4, r22, 0x8000
    stb r3, 0x65(r1)
    addi r3, r1, 0x68
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    stb r0, 0x66(r1)
    stb r5, 0x67(r1)
    lwz r0, 0x64(r1)
    stw r7, 0x138(r1)
    stw r0, 0x68(r1)
    lwz r9, 0x114(r30)
    lwz r6, 0x118(r30)
    mullw r5, r21, r9
    xoris r0, r9, 0x8000
    xoris r8, r6, 0x8000
    lwz r6, 0x124(r30)
    stw r8, 0x13c(r1)
    lfd fp0, 0x138(r1)
    add r5, r9, r5
    stw r7, 0x130(r1)
    add r5, r6, r5
    fsubs fp1, fp0, fp4
    xoris r5, r5, 0x8000
    stw r4, 0x12c(r1)
    stw r5, 0x134(r1)
    stw r7, 0x128(r1)
    lfd fp2, 0x130(r1)
    lfd fp0, 0x128(r1)
    stw r0, 0x124(r1)
    fsubs fp2, fp2, fp4
    fsubs fp3, fp0, fp4
    stw r7, 0x120(r1)
    lfd fp0, 0x120(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093BD0
    opword  0x48000098  // b .L_800905A4
L_80090510:
    li r4, 0xff
    li r3, 0xc8
    li r0, 0x32
    stb r4, 0x5c(r1)
    lis r6, 0x4330
    subi r5, r22, 0x3
    stb r3, 0x5d(r1)
    addi r3, r1, 0x60
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    stb r0, 0x5e(r1)
    opword  0xC0628968  // lfs f3, lbl_8053B908@sda21(r0)
    stb r4, 0x5f(r1)
    lwz r0, 0x5c(r1)
    stw r6, 0x138(r1)
    stw r0, 0x60(r1)
    lwz r8, 0x114(r30)
    lwz r7, 0x118(r30)
    mullw r4, r21, r8
    xoris r0, r8, 0x8000
    add r7, r7, r5
    lwz r5, 0x124(r30)
    stw r6, 0x130(r1)
    xoris r7, r7, 0x8000
    add r4, r8, r4
    stw r7, 0x13c(r1)
    add r4, r5, r4
    xoris r4, r4, 0x8000
    lfd fp0, 0x138(r1)
    stw r4, 0x134(r1)
    fsubs fp1, fp0, fp4
    lfd fp0, 0x130(r1)
    stw r0, 0x12c(r1)
    fsubs fp2, fp0, fp4
    stw r6, 0x128(r1)
    lfd fp0, 0x128(r1)
    fsubs fp4, fp0, fp4
    bl fn_80093BD0
L_800905A4:
    addi r21, r21, 0x1
    addi r28, r28, 0x14
    cmpwi r21, 0x8
    opword  0x4180FDAC  // blt .L_8009035C
    lwz r0, 0x120(r30)
    lis r3, 0x6666
    opword  0xCBE28938  // lfd f31, lbl_8053B8D8@sda21(r0)
    mr r28, r20
    add r4, r0, r20
    addi r29, r3, 0x6667
    subi r0, r4, 0x4
    li r22, 0x1
    divw r21, r0, r20
    lis r23, 0x4330
    opword  0x480000E4  // b .L_800906C0
L_800905E0:
    mulhw r0, r29, r22
    lwz r3, 0x118(r30)
    addi r5, r28, 0x1
    add r5, r3, r5
    srawi r0, r0, 1
    srwi r3, r0, 31
    add r0, r0, r3
    mulli r0, r0, 0x5
    subf. r0, r0, r22
    opword  0x41820024  // beq .L_80090628
    li r3, 0x64
    li r0, 0xff
    stb r3, 0x54(r1)
    addi r4, r1, 0x54
    stb r3, 0x55(r1)
    stb r0, 0x56(r1)
    stb r0, 0x57(r1)
    opword  0x48000020  // b .L_80090644
L_80090628:
    li r0, 0xff
    li r3, 0xb4
    stb r3, 0x50(r1)
    addi r4, r1, 0x50
    stb r0, 0x51(r1)
    stb r0, 0x52(r1)
    stb r0, 0x53(r1)
L_80090644:
    lwz r0, 0x0(r4)
    xoris r6, r5, 0x8000
    stw r6, 0x13c(r1)
    addi r3, r1, 0x58
    li r4, 0xc
    stw r0, 0x58(r1)
    lwz r5, 0x124(r30)
    lwz r7, 0x114(r30)
    add r0, r5, r31
    stw r23, 0x138(r1)
    add r5, r5, r7
    subf r0, r7, r0
    stw r23, 0x130(r1)
    xoris r5, r5, 0x8000
    lfd fp0, 0x138(r1)
    xoris r0, r0, 0x8000
    stw r5, 0x134(r1)
    fsubs fp1, fp0, fp31
    lfd fp0, 0x130(r1)
    stw r6, 0x12c(r1)
    fsubs fp2, fp0, fp31
    stw r23, 0x128(r1)
    lfd fp0, 0x128(r1)
    stw r0, 0x124(r1)
    fsubs fp3, fp0, fp31
    stw r23, 0x120(r1)
    lfd fp0, 0x120(r1)
    fsubs fp4, fp0, fp31
    bl fn_80093A68
    add r28, r28, r20
    addi r22, r22, 0x1
L_800906C0:
    cmpw r22, r21
    opword  0x4180FF1C  // blt .L_800905E0
L_800906C8:
    li r0, 0x0
    stw r0, 0x108(r30)
L_800906D0:
    psq_l fp31, 0x178(r1), 0, 0
    lfd fp31, 0x170(r1)
    lmw r20, 0x140(r1)
    lwz r0, 0x184(r1)
    mtlr r0
    addi r1, r1, 0x180
    blr
}

ASM void fn_800906EC(void)
{
    nofralloc
    stwu r1, -0x1a0(r1)
    mflr r0
    stw r0, 0x1a4(r1)
    stmw r26, 0x188(r1)
    mr r26, r3
    lbz r0, 0x130(r3)
    cmplwi r0, 0x0
    opword  0x418206D4  // beq .L_80090DDC
    lwz r3, 0x114(r26)
    lis r6, 0x4330
    lwz r4, 0x11c(r26)
    li r10, 0x64
    slwi r0, r3, 2
    lwz r28, 0x118(r26)
    lwz r27, 0x120(r26)
    slwi r31, r3, 1
    subf r30, r0, r4
    xoris r3, r28, 0x8000
    xoris r5, r30, 0x8000
    xoris r4, r27, 0x8000
    xoris r0, r31, 0x8000
    li r9, 0x0
    li r8, 0x32
    li r7, 0xc8
    stw r3, 0x44(r1)
    addi r3, r1, 0x3c
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    stw r6, 0x40(r1)
    lfd fp0, 0x40(r1)
    stw r5, 0x4c(r1)
    fsubs fp1, fp0, fp4
    stw r6, 0x48(r1)
    lfd fp0, 0x48(r1)
    stw r4, 0x54(r1)
    fsubs fp2, fp0, fp4
    stw r6, 0x50(r1)
    lfd fp0, 0x50(r1)
    stw r0, 0x5c(r1)
    fsubs fp3, fp0, fp4
    stw r6, 0x58(r1)
    lfd fp0, 0x58(r1)
    stb r10, 0x38(r1)
    fsubs fp4, fp0, fp4
    stb r9, 0x39(r1)
    stb r8, 0x3a(r1)
    stb r7, 0x3b(r1)
    lwz r0, 0x38(r1)
    stw r0, 0x3c(r1)
    bl fn_80093BD0
    lis r7, 0x4330
    xoris r3, r28, 0x8000
    xoris r6, r30, 0x8000
    xoris r5, r27, 0x8000
    xoris r0, r31, 0x8000
    li r11, 0x64
    li r10, 0x32
    li r9, 0x96
    li r8, 0xff
    stw r3, 0x64(r1)
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    addi r3, r1, 0x34
    stw r7, 0x60(r1)
    li r4, 0x6
    lfd fp0, 0x60(r1)
    stw r6, 0x6c(r1)
    fsubs fp1, fp0, fp4
    stw r7, 0x68(r1)
    lfd fp0, 0x68(r1)
    stw r5, 0x74(r1)
    fsubs fp2, fp0, fp4
    stw r7, 0x70(r1)
    lfd fp0, 0x70(r1)
    stw r0, 0x7c(r1)
    fsubs fp3, fp0, fp4
    stw r7, 0x78(r1)
    lfd fp0, 0x78(r1)
    stb r11, 0x30(r1)
    fsubs fp4, fp0, fp4
    stb r10, 0x31(r1)
    stb r9, 0x32(r1)
    stb r8, 0x33(r1)
    lwz r0, 0x30(r1)
    stw r0, 0x34(r1)
    bl fn_80093CE4
    opword  0x808D8CFC  // lwz r4, lbl_8053A8BC@sda21(r0)
    lis r9, 0x4330
    opword  0x816D8D0C  // lwz r11, lbl_8053A8CC@sda21(r0)
    xoris r10, r27, 0x8000
    opword  0x806D8D00  // lwz r3, lbl_8053A8C0@sda21(r0)
    addis r0, r4, 0x8000
    stw r0, 0x8c(r1)
    li r8, 0xff
    addis r4, r3, 0x8000
    xoris r5, r30, 0x8000
    stw r9, 0x88(r1)
    xoris r0, r31, 0x8000
    opword  0xC8828958  // lfd f4, lbl_8053B8F8@sda21(r0)
    li r7, 0x32
    lfd fp0, 0x88(r1)
    li r6, 0x96
    stw r11, 0x94(r1)
    addi r3, r1, 0x2c
    fsubs fp2, fp0, fp4
    opword  0xC8A28938  // lfd f5, lbl_8053B8D8@sda21(r0)
    stw r9, 0x90(r1)
    lfd fp0, 0x90(r1)
    stw r4, 0xbc(r1)
    fsubs fp0, fp0, fp4
    stw r9, 0xb8(r1)
    lfd fp1, 0xb8(r1)
    fdivs fp3, fp2, fp0
    stw r11, 0xc4(r1)
    stw r9, 0xc0(r1)
    lfd fp0, 0xc0(r1)
    stw r10, 0x84(r1)
    stw r9, 0x80(r1)
    lfd fp2, 0x80(r1)
    fsubs fp1, fp1, fp4
    fsubs fp0, fp0, fp4
    stw r10, 0xb4(r1)
    fsubs fp4, fp2, fp5
    stw r9, 0xb0(r1)
    fdivs fp0, fp1, fp0
    lfd fp1, 0xb0(r1)
    stw r9, 0xa0(r1)
    stw r5, 0xac(r1)
    stw r9, 0xa8(r1)
    lfd fp2, 0xa8(r1)
    fsubs fp1, fp1, fp5
    stw r9, 0xd0(r1)
    fmuls fp3, fp4, fp3
    stw r0, 0xdc(r1)
    fsubs fp2, fp2, fp5
    fmuls fp0, fp1, fp0
    fctiwz fp3, fp3
    stw r9, 0xd8(r1)
    fctiwz fp1, fp0
    lfd fp0, 0xd8(r1)
    stfd fp3, 0x98(r1)
    fsubs fp4, fp0, fp5
    stfd fp1, 0xc8(r1)
    lwz r4, 0x9c(r1)
    lwz r0, 0xcc(r1)
    add r4, r28, r4
    stb r8, 0x28(r1)
    add r0, r28, r0
    subf r0, r4, r0
    xoris r4, r4, 0x8000
    xoris r0, r0, 0x8000
    stw r4, 0xa4(r1)
    stw r0, 0xd4(r1)
    lfd fp1, 0xa0(r1)
    lfd fp0, 0xd0(r1)
    stb r7, 0x29(r1)
    fsubs fp1, fp1, fp5
    fsubs fp3, fp0, fp5
    stb r6, 0x2a(r1)
    stb r8, 0x2b(r1)
    lwz r0, 0x28(r1)
    stw r0, 0x2c(r1)
    bl fn_80093BD0
    opword  0x808D8D04  // lwz r4, lbl_8053A8C4@sda21(r0)
    lis r10, 0x4330
    opword  0x818D8D0C  // lwz r12, lbl_8053A8CC@sda21(r0)
    xoris r11, r27, 0x8000
    opword  0x806D8D08  // lwz r3, lbl_8053A8C8@sda21(r0)
    addis r0, r4, 0x8000
    stw r0, 0xec(r1)
    xoris r5, r30, 0x8000
    addis r4, r3, 0x8000
    xoris r0, r31, 0x8000
    stw r10, 0xe8(r1)
    li r9, 0x0
    opword  0xC8828958  // lfd f4, lbl_8053B8F8@sda21(r0)
    li r8, 0x32
    lfd fp0, 0xe8(r1)
    li r7, 0x96
    stw r12, 0xf4(r1)
    li r6, 0xff
    fsubs fp2, fp0, fp4
    opword  0xC8A28938  // lfd f5, lbl_8053B8D8@sda21(r0)
    stw r10, 0xf0(r1)
    addi r3, r1, 0x24
    lfd fp0, 0xf0(r1)
    stw r4, 0x11c(r1)
    fsubs fp0, fp0, fp4
    stw r10, 0x118(r1)
    lfd fp1, 0x118(r1)
    fdivs fp3, fp2, fp0
    stw r12, 0x124(r1)
    stw r10, 0x120(r1)
    lfd fp0, 0x120(r1)
    stw r11, 0xe4(r1)
    stw r10, 0xe0(r1)
    lfd fp2, 0xe0(r1)
    fsubs fp1, fp1, fp4
    fsubs fp0, fp0, fp4
    stw r11, 0x114(r1)
    fsubs fp4, fp2, fp5
    stw r10, 0x110(r1)
    fdivs fp0, fp1, fp0
    lfd fp1, 0x110(r1)
    stw r10, 0x100(r1)
    stw r5, 0x10c(r1)
    stw r10, 0x108(r1)
    lfd fp2, 0x108(r1)
    fsubs fp1, fp1, fp5
    stw r10, 0x130(r1)
    fmuls fp3, fp4, fp3
    stw r0, 0x13c(r1)
    fsubs fp2, fp2, fp5
    fmuls fp0, fp1, fp0
    fctiwz fp3, fp3
    stw r10, 0x138(r1)
    fctiwz fp1, fp0
    lfd fp0, 0x138(r1)
    stfd fp3, 0xf8(r1)
    fsubs fp4, fp0, fp5
    stfd fp1, 0x128(r1)
    lwz r4, 0xfc(r1)
    lwz r0, 0x12c(r1)
    add r29, r28, r4
    stb r9, 0x20(r1)
    add r0, r28, r0
    subf r0, r29, r0
    xoris r4, r29, 0x8000
    xoris r0, r0, 0x8000
    stw r4, 0x104(r1)
    stw r0, 0x134(r1)
    lfd fp1, 0x100(r1)
    lfd fp0, 0x130(r1)
    stb r8, 0x21(r1)
    fsubs fp1, fp1, fp5
    fsubs fp3, fp0, fp5
    stb r7, 0x22(r1)
    stb r6, 0x23(r1)
    lwz r0, 0x20(r1)
    stw r0, 0x24(r1)
    bl fn_80093BD0
    opword  0x806D8CF0  // lwz r3, lbl_8053A8B0@sda21(r0)
    bl fn_80083A68
    opword  0x808D8D0C  // lwz r4, lbl_8053A8CC@sda21(r0)
    lis r7, 0x4330
    xoris r0, r3, 0x8000
    li r9, 0xfa
    stw r0, 0x15c(r1)
    xoris r5, r27, 0x8000
    srwi r0, r31, 31
    xoris r8, r29, 0x8000
    stw r7, 0x158(r1)
    add r0, r0, r31
    opword  0xC8A28938  // lfd f5, lbl_8053B8D8@sda21(r0)
    srawi r29, r0, 1
    lfd fp0, 0x158(r1)
    xoris r6, r30, 0x8000
    stw r4, 0x164(r1)
    xoris r0, r29, 0x8000
    opword  0xC8228958  // lfd f1, lbl_8053B8F8@sda21(r0)
    fsubs fp2, fp0, fp5
    stw r7, 0x160(r1)
    li r10, 0x0
    li r4, 0xff
    addi r3, r1, 0x1c
    lfd fp0, 0x160(r1)
    stw r5, 0x154(r1)
    fsubs fp0, fp0, fp1
    stw r7, 0x150(r1)
    fdivs fp0, fp2, fp0
    lfd fp1, 0x150(r1)
    stw r8, 0x144(r1)
    stw r7, 0x140(r1)
    lfd fp3, 0x140(r1)
    stw r6, 0x14c(r1)
    fsubs fp2, fp1, fp5
    stw r7, 0x148(r1)
    fsubs fp1, fp3, fp5
    lfd fp3, 0x148(r1)
    fmuls fp0, fp2, fp0
    stw r7, 0x170(r1)
    fsubs fp2, fp3, fp5
    stw r0, 0x17c(r1)
    fctiwz fp0, fp0
    stw r7, 0x178(r1)
    stfd fp0, 0x168(r1)
    lfd fp0, 0x178(r1)
    lwz r0, 0x16c(r1)
    stb r10, 0x18(r1)
    fsubs fp4, fp0, fp5
    xoris r0, r0, 0x8000
    stw r0, 0x174(r1)
    lfd fp0, 0x170(r1)
    stb r9, 0x19(r1)
    fsubs fp3, fp0, fp5
    stb r9, 0x1a(r1)
    stb r4, 0x1b(r1)
    lwz r0, 0x18(r1)
    stw r0, 0x1c(r1)
    bl fn_80093BD0
    lwz r0, 0x128(r26)
    cmpwi r0, 0x0
    opword  0x40820240  // bne .L_80090DDC
    lwz r3, 0x12c(r26)
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_80090BB0
    opword  0x48000008  // b .L_80090BB4
L_80090BB0:
    opword  0x806D8CEC  // lwz r3, lbl_8053A8AC@sda21(r0)
L_80090BB4:
    opword  0x800D8CE8  // lwz r0, lbl_8053A8A8@sda21(r0)
    cmplw r3, r0
    opword  0x41820220  // beq .L_80090DDC
    lwz r5, 0x30(r3)
    lis r6, 0x4330
    opword  0x810D8D0C  // lwz r8, lbl_8053A8CC@sda21(r0)
    xoris r7, r27, 0x8000
    addis r0, r5, 0x8000
    stw r6, 0x170(r1)
    opword  0xC8628958  // lfd f3, lbl_8053B8F8@sda21(r0)
    stw r0, 0x174(r1)
    lwz r4, 0x34(r3)
    lfd fp0, 0x170(r1)
    stw r8, 0x16c(r1)
    addis r0, r4, 0x8000
    fsubs fp2, fp0, fp3
    opword  0xC8A28938  // lfd f5, lbl_8053B8D8@sda21(r0)
    stw r6, 0x168(r1)
    lfd fp0, 0x168(r1)
    stw r0, 0x154(r1)
    fsubs fp0, fp0, fp3
    stw r6, 0x150(r1)
    lfd fp1, 0x150(r1)
    fdivs fp2, fp2, fp0
    stw r8, 0x14c(r1)
    stw r6, 0x148(r1)
    lfd fp0, 0x148(r1)
    stw r7, 0x17c(r1)
    stw r6, 0x178(r1)
    fsubs fp1, fp1, fp3
    stw r7, 0x15c(r1)
    fsubs fp0, fp0, fp3
    lfd fp4, 0x178(r1)
    stw r6, 0x158(r1)
    fsubs fp3, fp4, fp5
    fdivs fp0, fp1, fp0
    lfd fp1, 0x158(r1)
    fsubs fp1, fp1, fp5
    fmuls fp2, fp3, fp2
    fmuls fp0, fp1, fp0
    fctiwz fp1, fp2
    fctiwz fp0, fp0
    stfd fp1, 0x160(r1)
    stfd fp0, 0x140(r1)
    lwz r0, 0x164(r1)
    lwz r26, 0x144(r1)
    add r31, r28, r0
    bl fn_80083A68
    opword  0x808D8D0C  // lwz r4, lbl_8053A8CC@sda21(r0)
    lis r10, 0x4330
    xoris r0, r3, 0x8000
    li r9, 0xff
    stw r0, 0x134(r1)
    xoris r3, r27, 0x8000
    add r0, r28, r26
    add r30, r29, r30
    stw r10, 0x130(r1)
    subf r0, r31, r0
    opword  0xC8A28938  // lfd f5, lbl_8053B8D8@sda21(r0)
    xoris r6, r31, 0x8000
    lfd fp0, 0x130(r1)
    xoris r5, r30, 0x8000
    stw r4, 0x12c(r1)
    xoris r4, r0, 0x8000
    opword  0xC8228958  // lfd f1, lbl_8053B8F8@sda21(r0)
    fsubs fp2, fp0, fp5
    stw r10, 0x128(r1)
    xoris r0, r29, 0x8000
    li r8, 0x0
    li r7, 0xc8
    lfd fp0, 0x128(r1)
    stw r3, 0x13c(r1)
    addi r3, r1, 0x8
    fsubs fp0, fp0, fp1
    stw r10, 0x138(r1)
    fdivs fp2, fp2, fp0
    lfd fp1, 0x138(r1)
    stw r6, 0x11c(r1)
    stw r10, 0x118(r1)
    lfd fp0, 0x118(r1)
    stw r5, 0x114(r1)
    fsubs fp3, fp1, fp5
    stw r10, 0x110(r1)
    fsubs fp1, fp0, fp5
    lfd fp0, 0x110(r1)
    fmuls fp3, fp3, fp2
    stw r4, 0x10c(r1)
    fsubs fp2, fp0, fp5
    stw r10, 0x108(r1)
    fctiwz fp4, fp3
    lfd fp0, 0x108(r1)
    stw r0, 0x104(r1)
    fsubs fp3, fp0, fp5
    stw r10, 0x100(r1)
    lfd fp0, 0x100(r1)
    stfd fp4, 0x120(r1)
    fsubs fp4, fp0, fp5
    stb r9, 0xc(r1)
    lwz r26, 0x124(r1)
    stb r8, 0xd(r1)
    stb r7, 0xe(r1)
    stb r9, 0xf(r1)
    lwz r0, 0xc(r1)
    stw r0, 0x8(r1)
    bl fn_80093BD0
    lis r6, 0x4330
    xoris r3, r31, 0x8000
    li r9, 0xff
    xoris r5, r30, 0x8000
    xoris r4, r26, 0x8000
    xoris r0, r29, 0x8000
    li r8, 0xb4
    li r7, 0xfa
    stw r3, 0xfc(r1)
    addi r3, r1, 0x10
    opword  0xC8828938  // lfd f4, lbl_8053B8D8@sda21(r0)
    stw r6, 0xf8(r1)
    lfd fp0, 0xf8(r1)
    stw r5, 0xf4(r1)
    fsubs fp1, fp0, fp4
    stw r6, 0xf0(r1)
    lfd fp0, 0xf0(r1)
    stw r4, 0xec(r1)
    fsubs fp2, fp0, fp4
    stw r6, 0xe8(r1)
    lfd fp0, 0xe8(r1)
    stw r0, 0xe4(r1)
    fsubs fp3, fp0, fp4
    stw r6, 0xe0(r1)
    lfd fp0, 0xe0(r1)
    stb r9, 0x14(r1)
    fsubs fp4, fp0, fp4
    stb r8, 0x15(r1)
    stb r7, 0x16(r1)
    stb r9, 0x17(r1)
    lwz r0, 0x14(r1)
    stw r0, 0x10(r1)
    bl fn_80093BD0
L_80090DDC:
    lmw r26, 0x188(r1)
    lwz r0, 0x1a4(r1)
    mtlr r0
    addi r1, r1, 0x1a0
    blr
}

ASM void fn_80090DF0(void)
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
    bl fn_8008CC40
    lis r4, lbl_804994C0@ha
    mr r3, r29
    addi r0, r4, lbl_804994C0@l
    stw r0, 0x0(r29)
    bl fn_80090F14
    mr r3, r29
    bl fn_8008CC6C
    mr r3, r29
    mr r4, r30
    mr r5, r31
    bl fn_80090F40
    lwz r0, 0x24(r1)
    mr r3, r29
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void dtor_80090E64(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820054  // beq .L_80090ED4
    lis r4, lbl_804994C0@ha
    addi r0, r4, lbl_804994C0@l
    stw r0, 0x0(r30)
    lbz r0, 0x4(r30)
    cmplwi r0, 0x0
    opword  0x41820018  // beq .L_80090EB0
    bl fn_80090EF0
    mr r3, r30
    bl fn_80090F14
    mr r3, r30
    bl fn_8008CC6C
L_80090EB0:
    cmplwi r30, 0x0
    opword  0x41820010  // beq .L_80090EC4
    lis r3, lbl_80499428@ha
    addi r0, r3, lbl_80499428@l
    stw r0, 0x0(r30)
L_80090EC4:
    extsh. r0, r31
    opword  0x4081000C  // ble .L_80090ED4
    mr r3, r30
    bl dtor_80084580
L_80090ED4:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80090EF0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r3, 0x50(r3)
    bl fn_800845A4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80090F14(void)
{
    nofralloc
    li r4, 0x0
    li r0, -0x1
    stw r4, 0x48(r3)
    stw r4, 0x50(r3)
    stw r4, 0x54(r3)
    stw r4, 0x58(r3)
    stw r4, 0x5c(r3)
    stw r4, 0x1c(r3)
    stw r4, 0x20(r3)
    stw r0, 0x44(r3)
    blr
}

ASM void fn_80090F40(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    bl fn_80090FC0
    clrlwi. r0, r3, 24
    opword  0x4082004C  // bne .L_80090FA8
    lwz r3, 0x50(r31)
    bl fn_800845A4
    li r4, 0x0
    li r0, -0x1
    stw r4, 0x48(r31)
    mr r3, r31
    stw r4, 0x50(r31)
    stw r4, 0x54(r31)
    stw r4, 0x58(r31)
    stw r4, 0x5c(r31)
    stw r4, 0x1c(r31)
    stw r4, 0x20(r31)
    stw r0, 0x44(r31)
    bl fn_8008CC6C
    li r0, 0x0
    li r3, 0x0
    stb r0, 0x4(r31)
    opword  0x48000008  // b .L_80090FAC
L_80090FA8:
    li r3, 0x1
L_80090FAC:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80090FC0(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r3
    stw r30, 0x18(r1)
    mr r30, r5
    stw r29, 0x14(r1)
    mr r29, r4
    lwz r3, 0x50(r3)
    bl fn_800845A4
    li r4, 0x0
    li r0, -0x1
    stw r4, 0x48(r31)
    mr r3, r31
    stw r4, 0x50(r31)
    stw r4, 0x54(r31)
    stw r4, 0x58(r31)
    stw r4, 0x5c(r31)
    stw r4, 0x1c(r31)
    stw r4, 0x20(r31)
    stw r0, 0x44(r31)
    bl fn_8008CC6C
    cmplwi r29, 0x0
    opword  0x4082000C  // bne .L_8009102C
    li r3, 0x0
    opword  0x480000B4  // b .L_800910DC
L_8009102C:
    stw r29, 0x48(r31)
    li r0, 0x1
    mr r3, r31
    stb r0, 0x4(r31)
    bl fn_800910F8
    lhz r6, 0x64(r31)
    mr r4, r30
    lhz r0, 0x62(r31)
    li r5, 0x0
    lhz r3, 0x60(r31)
    add r0, r0, r6
    add r0, r3, r0
    slwi r3, r0, 2
    bl fn_80084514
    stw r3, 0x50(r31)
    lwz r3, 0x50(r31)
    cmplwi r3, 0x0
    opword  0x4082000C  // bne .L_8009107C
    li r3, 0x0
    opword  0x48000064  // b .L_800910DC
L_8009107C:
    lhz r0, 0x60(r31)
    cmplwi r0, 0x0
    opword  0x41820014  // beq .L_80091098
    stw r3, 0x54(r31)
    lhz r0, 0x60(r31)
    slwi r0, r0, 2
    add r3, r3, r0
L_80091098:
    lhz r0, 0x62(r31)
    cmplwi r0, 0x0
    opword  0x41820014  // beq .L_800910B4
    stw r3, 0x58(r31)
    lhz r0, 0x62(r31)
    slwi r0, r0, 2
    add r3, r3, r0
L_800910B4:
    lhz r0, 0x64(r31)
    cmplwi r0, 0x0
    opword  0x41820008  // beq .L_800910C4
    stw r3, 0x5c(r31)
L_800910C4:
    mr r3, r31
    lwz r12, 0x0(r31)
    lwz r12, 0x48(r12)
    mtctr r12
    bctrl
    li r3, 0x1
L_800910DC:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800910F8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    li r0, 0x0
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    li r29, 0x0
    stw r28, 0x10(r1)
    mr r28, r3
    sth r0, 0x60(r3)
    lis r3, 0x4d41
    addi r31, r3, 0x5031
    sth r0, 0x62(r28)
    sth r0, 0x64(r28)
    lwz r3, 0x48(r28)
    addi r30, r3, 0x20
    opword  0x48000098  // b .L_800911D4
L_80091140:
    lwz r4, 0x0(r30)
    cmpw r4, r31
    opword  0x41820064  // beq .L_800911AC
    opword  0x4080002C  // bge .L_80091178
    lis r3, 0x494e
    addi r0, r3, 0x4631
    cmpw r4, r0
    opword  0x4182006C  // beq .L_800911C8
    opword  0x4080005C  // bge .L_800911BC
    lis r3, 0x474c
    addi r0, r3, 0x5931
    cmpw r4, r0
    opword  0x4182002C  // beq .L_8009119C
    opword  0x48000048  // b .L_800911BC
L_80091178:
    lis r3, 0x5749
    addi r0, r3, 0x4431
    cmpw r4, r0
    opword  0x41820008  // beq .L_8009118C
    opword  0x48000034  // b .L_800911BC
L_8009118C:
    lhz r3, 0x60(r28)
    addi r0, r3, 0x1
    sth r0, 0x60(r28)
    opword  0x48000030  // b .L_800911C8
L_8009119C:
    lhz r3, 0x62(r28)
    addi r0, r3, 0x1
    sth r0, 0x62(r28)
    opword  0x48000020  // b .L_800911C8
L_800911AC:
    lhz r3, 0x64(r28)
    addi r0, r3, 0x1
    sth r0, 0x64(r28)
    opword  0x48000010  // b .L_800911C8
L_800911BC:
    lis r3, lbl_8045EDEC@ha
    addi r3, r3, lbl_8045EDEC@l
    bl fn_80089084
L_800911C8:
    lwz r0, 0x4(r30)
    addi r29, r29, 0x1
    add r30, r30, r0
L_800911D4:
    lwz r3, 0x48(r28)
    lwz r0, 0xc(r3)
    cmplw r29, r0
    opword  0x4180FF60  // blt .L_80091140
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80091204(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    lis r4, 0x1
    stw r0, 0x34(r1)
    subi r0, r4, 0x1
    stmw r25, 0x14(r1)
    mr r25, r3
    li r30, 0x0
    lis r3, 0x4d41
    addi r31, r3, 0x5031
    li r26, 0x0
    mr r29, r30
    mr r28, r30
    sth r0, 0x68(r25)
    lwz r3, 0x48(r25)
    addi r27, r3, 0x20
    opword  0x480000D8  // b .L_8009131C
L_80091248:
    lwz r4, 0x0(r27)
    cmpw r4, r31
    opword  0x41820088  // beq .L_800912D8
    opword  0x4080002C  // bge .L_80091280
    lis r3, 0x494e
    addi r0, r3, 0x4631
    cmpw r4, r0
    opword  0x41820030  // beq .L_80091294
    opword  0x4080009C  // bge .L_80091304
    lis r3, 0x474c
    addi r0, r3, 0x5931
    cmpw r4, r0
    opword  0x41820050  // beq .L_800912C8
    opword  0x48000088  // b .L_80091304
L_80091280:
    lis r3, 0x5749
    addi r0, r3, 0x4431
    cmpw r4, r0
    opword  0x4182002C  // beq .L_800912B8
    opword  0x48000074  // b .L_80091304
L_80091294:
    stw r27, 0x4c(r25)
    lis r3, lbl_8045EDE0@ha
    addi r0, r3, lbl_8045EDE0@l
    lwz r3, 0x4c(r25)
    lhz r3, 0x8(r3)
    slwi r3, r3, 2
    add r0, r0, r3
    stw r0, 0x6c(r25)
    opword  0x4800005C  // b .L_80091310
L_800912B8:
    lwz r3, 0x54(r25)
    stwx r27, r3, r30
    addi r30, r30, 0x4
    opword  0x4800004C  // b .L_80091310
L_800912C8:
    lwz r3, 0x58(r25)
    stwx r27, r3, r29
    addi r29, r29, 0x4
    opword  0x4800003C  // b .L_80091310
L_800912D8:
    lwz r3, 0x5c(r25)
    stwx r27, r3, r28
    lwz r3, 0x5c(r25)
    lhz r0, 0x68(r25)
    lwzx r3, r3, r28
    lhz r3, 0xa(r3)
    cmplw r0, r3
    opword  0x40810008  // ble .L_800912FC
    sth r3, 0x68(r25)
L_800912FC:
    addi r28, r28, 0x4
    opword  0x48000010  // b .L_80091310
L_80091304:
    lis r3, lbl_8045EE0C@ha
    addi r3, r3, lbl_8045EE0C@l
    bl fn_80089084
L_80091310:
    lwz r0, 0x4(r27)
    addi r26, r26, 0x1
    add r27, r27, r0
L_8009131C:
    lwz r3, 0x48(r25)
    lwz r0, 0xc(r3)
    cmplw r26, r0
    opword  0x4180FF20  // blt .L_80091248
    lmw r25, 0x14(r1)
    lwz r0, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_80091340(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r3, 0x1
    stw r0, 0x14(r1)
    bl fn_8005D3C8
    li r3, 0x1
    bl fn_8005F11C
    li r3, 0x1
    bl fn_8005B93C
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    li r6, 0x4
    bl fn_8005EF80
    li r3, 0x4
    li r4, 0x0
    li r5, 0x0
    li r6, 0x1
    li r7, 0x0
    li r8, 0x0
    li r9, 0x2
    bl fn_8005D404
    li r3, 0x0
    li r4, 0x0
    bl fn_8005E9E0
    li r3, 0x1
    li r4, 0x4
    li r5, 0x5
    li r6, 0xf
    bl fn_8005F48C
    li r3, 0x0
    li r4, 0x9
    li r5, 0x1
    li r6, 0x3
    li r7, 0x0
    bl fn_8005ADB4
    li r3, 0x0
    li r4, 0xb
    li r5, 0x1
    li r6, 0x5
    li r7, 0x0
    bl fn_8005ADB4
    li r3, 0x0
    li r4, 0xd
    li r5, 0x1
    li r6, 0x2
    li r7, 0xf
    bl fn_8005ADB4
    bl fn_8005AD7C
    li r3, 0x9
    li r4, 0x1
    bl fn_8005A464
    li r3, 0xb
    li r4, 0x1
    bl fn_8005A464
    li r3, 0xd
    li r4, 0x1
    bl fn_8005A464
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80091438(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    lwz r0, 0x0(r4)
    stw r31, 0x1c(r1)
    mr r31, r5
    cmplwi r0, 0x0
    stw r30, 0x18(r1)
    mr r30, r4
    opword  0x40820028  // bne .L_80091484
    lwz r4, 0x0(r31)
    addis r0, r4, 0x1
    cmplwi r0, 0xffff
    opword  0x40820018  // bne .L_80091484
    lwz r12, 0x0(r3)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    opword  0x480001E0  // b .L_80091660
L_80091484:
    li r3, 0x1
    bl fn_8005D3C8
    li r3, 0x2
    bl fn_8005F11C
    li r3, 0x1
    bl fn_8005B93C
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    li r6, 0xff
    bl fn_8005EF80
    li r3, 0x4
    li r4, 0x0
    li r5, 0x0
    li r6, 0x1
    li r7, 0x0
    li r8, 0x0
    li r9, 0x2
    bl fn_8005D404
    lwz r0, 0x0(r30)
    addi r4, r1, 0xc
    li r3, 0x1
    stw r0, 0xc(r1)
    bl fn_8005EBC4
    lwz r0, 0x0(r31)
    addi r4, r1, 0x8
    li r3, 0x2
    stw r0, 0x8(r1)
    bl fn_8005EBC4
    li r3, 0x0
    li r4, 0x2
    li r5, 0x4
    li r6, 0x8
    li r7, 0xf
    bl fn_8005EA6C
    li r3, 0x0
    li r4, 0x1
    li r5, 0x2
    li r6, 0x4
    li r7, 0x7
    bl fn_8005EAB0
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    li r6, 0x0
    li r7, 0x1
    li r8, 0x0
    bl fn_8005EAF4
    li r3, 0x0
    li r4, 0x0
    li r5, 0x0
    li r6, 0x0
    li r7, 0x1
    li r8, 0x0
    bl fn_8005EB5C
    li r3, 0x1
    li r4, 0xff
    li r5, 0xff
    li r6, 0x4
    bl fn_8005EF80
    li r3, 0x1
    li r4, 0xf
    li r5, 0x0
    li r6, 0xa
    li r7, 0xf
    bl fn_8005EA6C
    li r3, 0x1
    li r4, 0x7
    li r5, 0x0
    li r6, 0x5
    li r7, 0x7
    bl fn_8005EAB0
    li r3, 0x1
    li r4, 0x0
    li r5, 0x0
    li r6, 0x0
    li r7, 0x1
    li r8, 0x0
    bl fn_8005EAF4
    li r3, 0x1
    li r4, 0x0
    li r5, 0x0
    li r6, 0x0
    li r7, 0x1
    li r8, 0x0
    bl fn_8005EB5C
    li r3, 0x1
    li r4, 0x4
    li r5, 0x5
    li r6, 0xf
    bl fn_8005F48C
    li r3, 0x0
    li r4, 0x9
    li r5, 0x1
    li r6, 0x3
    li r7, 0x0
    bl fn_8005ADB4
    li r3, 0x0
    li r4, 0xb
    li r5, 0x1
    li r6, 0x5
    li r7, 0x0
    bl fn_8005ADB4
    li r3, 0x0
    li r4, 0xd
    li r5, 0x1
    li r6, 0x2
    li r7, 0xf
    bl fn_8005ADB4
    bl fn_8005AD7C
    li r3, 0x9
    li r4, 0x1
    bl fn_8005A464
    li r3, 0xb
    li r4, 0x1
    bl fn_8005A464
    li r3, 0xd
    li r4, 0x1
    bl fn_8005A464
L_80091660:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80091678(void)
{
    nofralloc
    stwu r1, -0xb0(r1)
    mflr r0
    stw r0, 0xb4(r1)
    stfd fp31, 0xa0(r1)
    psq_st fp31, 0xa8(r1), 0, 0
    stfd fp30, 0x90(r1)
    psq_st fp30, 0x98(r1), 0, 0
    stfd fp29, 0x80(r1)
    psq_st fp29, 0x88(r1), 0, 0
    stfd fp28, 0x70(r1)
    psq_st fp28, 0x78(r1), 0, 0
    stfd fp27, 0x60(r1)
    psq_st fp27, 0x68(r1), 0, 0
    stfd fp26, 0x50(r1)
    psq_st fp26, 0x58(r1), 0, 0
    stmw r27, 0x3c(r1)
    fmr fp26, fp1
    mr r27, r5
    fmr fp27, fp2
    mr r31, r3
    fmr fp30, fp3
    addi r6, r1, 0x8
    fmr fp28, fp4
    li r5, 0x0
    bl fn_80091AF0
    lbz r0, 0x5(r31)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_800916F0
    clrlwi. r0, r27, 24
    opword  0x4082000C  // bne .L_800916F8
L_800916F0:
    fmr fp31, fp26
    opword  0x48000054  // b .L_80091748
L_800916F8:
    mr r3, r31
    lwz r12, 0x0(r31)
    lwz r12, 0x30(r12)
    mtctr r12
    bctrl
    lis r4, 0x4330
    xoris r0, r3, 0x8000
    stw r0, 0x14(r1)
    lbz r0, 0x8(r1)
    stw r4, 0x10(r1)
    opword  0xC8228978  // lfd f1, lbl_8053B918@sda21(r0)
    lfd fp0, 0x10(r1)
    stw r0, 0x1c(r1)
    fsubs fp0, fp0, fp1
    opword  0xC8228980  // lfd f1, lbl_8053B920@sda21(r0)
    stw r4, 0x18(r1)
    fdivs fp2, fp30, fp0
    lfd fp0, 0x18(r1)
    fsubs fp0, fp0, fp1
    fnmsubs fp31, fp0, fp2, fp26
L_80091748:
    mr r3, r31
    lwz r12, 0x0(r31)
    lwz r12, 0x30(r12)
    mtctr r12
    bctrl
    lis r4, 0x4330
    xoris r0, r3, 0x8000
    stw r0, 0x1c(r1)
    lwz r0, 0x8(r31)
    stw r4, 0x18(r1)
    opword  0xC8428978  // lfd f2, lbl_8053B918@sda21(r0)
    xoris r3, r0, 0x8000
    lfd fp0, 0x18(r1)
    lbz r0, 0x5(r31)
    fsubs fp0, fp0, fp2
    stw r3, 0x14(r1)
    cmplwi r0, 0x0
    stw r4, 0x10(r1)
    fdivs fp1, fp30, fp0
    lfd fp0, 0x10(r1)
    fsubs fp0, fp0, fp2
    fmuls fp29, fp0, fp1
    opword  0x408200B8  // bne .L_80091858
    clrlwi. r0, r27, 24
    opword  0x40820060  // bne .L_80091808
    mr r3, r31
    lwz r12, 0x0(r31)
    lwz r12, 0x30(r12)
    mtctr r12
    bctrl
    lis r4, 0x4330
    xoris r0, r3, 0x8000
    stw r0, 0x1c(r1)
    opword  0xC8428978  // lfd f2, lbl_8053B918@sda21(r0)
    stw r4, 0x18(r1)
    lbz r3, 0x9(r1)
    lfd fp0, 0x18(r1)
    lbz r0, 0x8(r1)
    fsubs fp0, fp0, fp2
    stw r4, 0x10(r1)
    add r0, r3, r0
    xoris r0, r0, 0x8000
    fdivs fp1, fp30, fp0
    stw r0, 0x14(r1)
    lfd fp0, 0x10(r1)
    fsubs fp0, fp0, fp2
    fmuls fp29, fp0, fp1
    opword  0x48000054  // b .L_80091858
L_80091808:
    mr r3, r31
    lwz r12, 0x0(r31)
    lwz r12, 0x30(r12)
    mtctr r12
    bctrl
    lis r4, 0x4330
    xoris r0, r3, 0x8000
    stw r0, 0x1c(r1)
    lbz r0, 0x9(r1)
    stw r4, 0x18(r1)
    opword  0xC8228978  // lfd f1, lbl_8053B918@sda21(r0)
    lfd fp0, 0x18(r1)
    stw r0, 0x14(r1)
    fsubs fp0, fp0, fp1
    opword  0xC8228980  // lfd f1, lbl_8053B920@sda21(r0)
    stw r4, 0x10(r1)
    fdivs fp2, fp30, fp0
    lfd fp0, 0x10(r1)
    fsubs fp0, fp0, fp1
    fmuls fp29, fp0, fp2
L_80091858:
    mr r3, r31
    fadds fp30, fp31, fp30
    lwz r12, 0x0(r31)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    xoris r3, r3, 0x8000
    lis r0, 0x4330
    stw r3, 0x1c(r1)
    mr r3, r31
    lwz r12, 0x0(r31)
    stw r0, 0x18(r1)
    opword  0xC8228978  // lfd f1, lbl_8053B918@sda21(r0)
    lfd fp0, 0x18(r1)
    lwz r12, 0x1c(r12)
    fsubs fp0, fp0, fp1
    fdivs fp26, fp28, fp0
    mtctr r12
    bctrl
    xoris r3, r3, 0x8000
    lis r0, 0x4330
    stw r3, 0x14(r1)
    mr r3, r31
    lwz r12, 0x0(r31)
    stw r0, 0x10(r1)
    opword  0xC8228978  // lfd f1, lbl_8053B918@sda21(r0)
    lfd fp0, 0x10(r1)
    lwz r12, 0x24(r12)
    fsubs fp0, fp0, fp1
    fnmsubs fp26, fp0, fp26, fp27
    mtctr r12
    bctrl
    xoris r3, r3, 0x8000
    lis r0, 0x4330
    stw r3, 0x24(r1)
    mr r3, r31
    lwz r12, 0x0(r31)
    stw r0, 0x20(r1)
    opword  0xC8228978  // lfd f1, lbl_8053B918@sda21(r0)
    lfd fp0, 0x20(r1)
    lwz r12, 0x20(r12)
    fsubs fp0, fp0, fp1
    fdivs fp28, fp28, fp0
    mtctr r12
    bctrl
    lhz r0, 0x66(r31)
    xoris r10, r3, 0x8000
    lwz r3, 0x58(r31)
    lis r7, 0x4330
    slwi r0, r0, 2
    lwz r11, 0x1c(r31)
    lwzx r8, r3, r0
    li r3, 0x0
    lwz r12, 0x20(r31)
    slwi r6, r11, 15
    lhz r5, 0xc(r8)
    li r4, 0x9
    lhz r0, 0xe(r8)
    slwi r9, r12, 15
    add r5, r11, r5
    lhz r11, 0x1a(r8)
    add r0, r12, r0
    lhz r12, 0x1c(r8)
    slwi r8, r5, 15
    stw r10, 0x2c(r1)
    slwi r0, r0, 15
    opword  0xC8228978  // lfd f1, lbl_8053B918@sda21(r0)
    divw r30, r6, r11
    stw r7, 0x28(r1)
    li r5, 0x1
    lfd fp0, 0x28(r1)
    li r6, 0x4
    li r7, 0x0
    fsubs fp0, fp0, fp1
    divw r29, r9, r12
    fmadds fp27, fp0, fp28, fp27
    divw r28, r8, r11
    divw r27, r0, r12
    bl fn_8005ADB4
    li r3, 0x80
    li r4, 0x0
    li r5, 0x4
    bl fn_8005C24C
    lis r8, 0xcc01
    opword  0xC0028970  // lfs f0, lbl_8053B910@sda21(r0)
    stfs fp31, -0x8000(r8)
    li r3, 0x0
    li r4, 0x9
    li r5, 0x1
    stfs fp26, -0x8000(r8)
    li r6, 0x3
    li r7, 0x0
    stfs fp0, -0x8000(r8)
    lwz r0, 0xc(r31)
    stw r0, -0x8000(r8)
    sth r30, -0x8000(r8)
    sth r29, -0x8000(r8)
    stfs fp30, -0x8000(r8)
    stfs fp26, -0x8000(r8)
    stfs fp0, -0x8000(r8)
    lwz r0, 0x10(r31)
    stw r0, -0x8000(r8)
    sth r28, -0x8000(r8)
    sth r29, -0x8000(r8)
    stfs fp30, -0x8000(r8)
    stfs fp27, -0x8000(r8)
    stfs fp0, -0x8000(r8)
    lwz r0, 0x18(r31)
    stw r0, -0x8000(r8)
    sth r28, -0x8000(r8)
    sth r27, -0x8000(r8)
    stfs fp31, -0x8000(r8)
    stfs fp27, -0x8000(r8)
    stfs fp0, -0x8000(r8)
    lwz r0, 0x14(r31)
    stw r0, -0x8000(r8)
    sth r30, -0x8000(r8)
    sth r27, -0x8000(r8)
    bl fn_8005ADB4
    fmr fp1, fp29
    psq_l fp31, 0xa8(r1), 0, 0
    lfd fp31, 0xa0(r1)
    psq_l fp30, 0x98(r1), 0, 0
    lfd fp30, 0x90(r1)
    psq_l fp29, 0x88(r1), 0, 0
    lfd fp29, 0x80(r1)
    psq_l fp28, 0x78(r1), 0, 0
    lfd fp28, 0x70(r1)
    psq_l fp27, 0x68(r1), 0, 0
    lfd fp27, 0x60(r1)
    psq_l fp26, 0x58(r1), 0, 0
    lfd fp26, 0x50(r1)
    lmw r27, 0x3c(r1)
    lwz r0, 0xb4(r1)
    mtlr r0
    addi r1, r1, 0xb0
    blr
}

ASM void fn_80091A7C(void)
{
    nofralloc
    lwz r3, 0x4c(r3)
    lhz r3, 0xc(r3)
    blr
}

ASM void fn_80091A88(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r12, 0x0(r3)
    lwz r12, 0x20(r12)
    mtctr r12
    bctrl
    mr r31, r3
    mr r3, r30
    lwz r12, 0x0(r30)
    lwz r12, 0x1c(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    add r3, r3, r31
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80091AE4(void)
{
    nofralloc
    lwz r3, 0x4c(r3)
    lhz r3, 0xa(r3)
    blr
}

ASM void fn_80091AF0(void)
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
    opword  0x41820018  // beq .L_80091B30
    lwz r12, 0x0(r3)
    mr r5, r6
    lwz r12, 0x2c(r12)
    mtctr r12
    bctrl
L_80091B30:
    mr r3, r29
    mr r4, r30
    bl fn_80091D0C
    lwz r12, 0x0(r29)
    mr r0, r3
    mr r3, r29
    mr r5, r31
    lwz r12, 0x44(r12)
    mr r4, r0
    mtctr r12
    bctrl
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80091B78(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r5
    stw r30, 0x8(r1)
    mr r30, r3
    bl fn_80091D0C
    li r0, 0x0
    lwz r7, 0x54(r30)
    stb r0, 0x0(r31)
    li r8, 0x0
    lwz r5, 0x4c(r30)
    mr r4, r7
    lhz r6, 0x60(r30)
    lhz r0, 0xe(r5)
    stb r0, 0x1(r31)
    mtctr r6
    cmpwi r6, 0x0
    opword  0x4081005C  // ble .L_80091C20
L_80091BC8:
    lwz r5, 0x0(r4)
    lhz r0, 0x8(r5)
    cmpw r0, r3
    opword  0x41810040  // bgt .L_80091C14
    lhz r0, 0xa(r5)
    cmpw r3, r0
    opword  0x41810034  // bgt .L_80091C14
    slwi r0, r8, 2
    lwzx r4, r7, r0
    lhz r0, 0x8(r4)
    subf r0, r0, r3
    slwi r3, r0, 1
    addi r3, r3, 0xc
    add r3, r4, r3
    lbz r0, 0x0(r3)
    stb r0, 0x0(r31)
    lbz r0, 0x1(r3)
    stb r0, 0x1(r31)
    opword  0x48000010  // b .L_80091C20
L_80091C14:
    addi r4, r4, 0x4
    addi r8, r8, 0x1
    opword  0x4200FFAC  // bdnz .L_80091BC8
L_80091C20:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80091C38(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lwz r4, 0x58(r3)
    stw r0, 0x14(r1)
    cmplwi r4, 0x0
    opword  0x41820018  // beq .L_80091C64
    lwz r4, 0x0(r4)
    cmplwi r4, 0x0
    opword  0x4182000C  // beq .L_80091C64
    lhz r3, 0xc(r4)
    opword  0x48000014  // b .L_80091C74
L_80091C64:
    lwz r12, 0x0(r3)
    lwz r12, 0x28(r12)
    mtctr r12
    bctrl
L_80091C74:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80091C84(void)
{
    nofralloc
    lwz r3, 0x4c(r3)
    lhz r3, 0xe(r3)
    blr
}

ASM void fn_80091C90(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lwz r4, 0x58(r3)
    stw r0, 0x14(r1)
    cmplwi r4, 0x0
    opword  0x41820018  // beq .L_80091CBC
    lwz r4, 0x0(r4)
    cmplwi r4, 0x0
    opword  0x4182000C  // beq .L_80091CBC
    lhz r3, 0xe(r4)
    opword  0x48000014  // b .L_80091CCC
L_80091CBC:
    lwz r12, 0x0(r3)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
L_80091CCC:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80091CDC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lwz r5, 0x6c(r3)
    mr r3, r4
    stw r0, 0x14(r1)
    lwz r12, 0x0(r5)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80091D0C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lwz r5, 0x4c(r3)
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r4
    stw r29, 0x14(r1)
    mr r29, r3
    lwz r12, 0x0(r3)
    lhz r31, 0x12(r5)
    lwz r12, 0x38(r12)
    mtctr r12
    bctrl
    cmpwi r3, 0x2
    opword  0x40820034  // bne .L_80091D7C
    lhz r0, 0x68(r29)
    cmplwi r0, 0x8000
    opword  0x41800028  // blt .L_80091D7C
    cmpwi r30, 0x20
    opword  0x41800020  // blt .L_80091D7C
    cmplwi r30, 0x7f
    opword  0x40800018  // bge .L_80091D7C
    lis r3, lbl_8045EE20@ha
    slwi r0, r30, 1
    addi r3, r3, lbl_8045EE20@l
    add r3, r3, r0
    lhz r30, -0x40(r3)
L_80091D7C:
    lwz r5, 0x5c(r29)
    li r6, 0x0
    lhz r0, 0x64(r29)
    mr r3, r5
    mtctr r0
    cmpwi r0, 0x0
    opword  0x40810104  // ble .L_80091E98
L_80091D98:
    lwz r4, 0x0(r3)
    lhz r0, 0xa(r4)
    cmpw r0, r30
    opword  0x418100E8  // bgt .L_80091E8C
    lhz r0, 0xc(r4)
    cmpw r30, r0
    opword  0x418100DC  // bgt .L_80091E8C
    slwi r0, r6, 2
    lwzx r4, r5, r0
    lhz r0, 0x8(r4)
    cmplwi r0, 0x0
    opword  0x40820010  // bne .L_80091DD4
    lhz r0, 0xa(r4)
    subf r31, r0, r30
    opword  0x480000C8  // b .L_80091E98
L_80091DD4:
    cmplwi r0, 0x2
    opword  0x4082001C  // bne .L_80091DF4
    lhz r0, 0xa(r4)
    subf r0, r0, r30
    slwi r0, r0, 1
    add r3, r4, r0
    lhz r31, 0x10(r3)
    opword  0x480000A8  // b .L_80091E98
L_80091DF4:
    cmplwi r0, 0x3
    opword  0x40820064  // bne .L_80091E5C
    lhz r3, 0xe(r4)
    addi r4, r4, 0x10
    li r5, 0x0
    subi r6, r3, 0x1
    opword  0x48000044  // b .L_80091E50
L_80091E10:
    add r3, r6, r5
    srwi r0, r3, 31
    add r0, r0, r3
    srawi r7, r0, 1
    slwi r3, r7, 2
    lhzx r0, r4, r3
    cmpw r30, r0
    opword  0x4080000C  // bge .L_80091E38
    subi r6, r7, 0x1
    opword  0x4800001C  // b .L_80091E50
L_80091E38:
    opword  0x4081000C  // ble .L_80091E44
    addi r5, r7, 0x1
    opword  0x48000010  // b .L_80091E50
L_80091E44:
    add r3, r4, r3
    lhz r31, 0x2(r3)
    opword  0x4800004C  // b .L_80091E98
L_80091E50:
    cmpw r6, r5
    opword  0x4080FFBC  // bge .L_80091E10
    opword  0x48000040  // b .L_80091E98
L_80091E5C:
    cmplwi r0, 0x1
    opword  0x40820038  // bne .L_80091E98
    lhz r0, 0xe(r4)
    li r5, 0x0
    cmplwi r0, 0x1
    opword  0x40820008  // bne .L_80091E78
    addi r5, r4, 0x10
L_80091E78:
    mr r3, r29
    mr r4, r30
    bl fn_80092044
    mr r31, r3
    opword  0x48000010  // b .L_80091E98
L_80091E8C:
    addi r3, r3, 0x4
    addi r6, r6, 0x1
    opword  0x4200FF04  // bdnz .L_80091D98
L_80091E98:
    lwz r0, 0x24(r1)
    mr r3, r31
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80091EB8(void)
{
    nofralloc
    lwz r3, 0x4c(r3)
    lhz r3, 0x8(r3)
    blr
}

ASM void fn_80091EC4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    li r31, 0x0
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    mr r29, r5
    stw r28, 0x10(r1)
    mr r28, r3
    lhz r7, 0x62(r3)
    li r3, 0x0
    mtctr r7
    cmpwi r7, 0x0
    opword  0x40810044  // ble .L_80091F40
L_80091F00:
    lwz r6, 0x58(r28)
    lwzx r5, r6, r3
    lhz r0, 0x8(r5)
    cmpw r0, r4
    opword  0x41810024  // bgt .L_80091F34
    lhz r0, 0xa(r5)
    cmpw r4, r0
    opword  0x41810018  // bgt .L_80091F34
    slwi r0, r31, 2
    lwzx r3, r6, r0
    lhz r0, 0x8(r3)
    subf r4, r0, r4
    opword  0x48000010  // b .L_80091F40
L_80091F34:
    addi r3, r3, 0x4
    addi r31, r31, 0x1
    opword  0x4200FFC4  // bdnz .L_80091F00
L_80091F40:
    cmpw r31, r7
    opword  0x418200E0  // beq .L_80092024
    lwz r3, 0x58(r28)
    slwi r7, r31, 2
    lwzx r5, r3, r7
    lhz r6, 0x16(r5)
    lhz r3, 0x18(r5)
    lhz r0, 0xc(r5)
    mullw r3, r6, r3
    divw r30, r4, r3
    mullw r3, r30, r3
    subf r4, r3, r4
    divw r5, r4, r6
    mullw r3, r5, r6
    subf r3, r3, r4
    mullw r0, r3, r0
    stw r0, 0x1c(r28)
    lwz r3, 0x58(r28)
    lwzx r3, r3, r7
    lhz r0, 0xe(r3)
    mullw r0, r5, r0
    stw r0, 0x20(r28)
    lwz r0, 0x44(r28)
    cmpw r30, r0
    opword  0x40820010  // bne .L_80091FB0
    lhz r0, 0x66(r28)
    cmpw r31, r0
    opword  0x4182006C  // beq .L_80092018
L_80091FB0:
    lwz r4, 0x58(r28)
    addi r3, r28, 0x24
    li r8, 0x0
    li r9, 0x0
    lwzx r11, r4, r7
    li r10, 0x0
    lwz r0, 0x10(r11)
    lhz r5, 0x1a(r11)
    mullw r4, r30, r0
    lhz r6, 0x1c(r11)
    lhz r7, 0x14(r11)
    addi r4, r4, 0x20
    add r4, r11, r4
    bl fn_8005D6E0
    opword  0xC0228970  // lfs f1, lbl_8053B910@sda21(r0)
    addi r3, r28, 0x24
    li r4, 0x1
    li r5, 0x1
    fmr fp2, fp1
    li r6, 0x0
    fmr fp3, fp1
    li r7, 0x0
    li r8, 0x0
    bl fn_8005D974
    stw r30, 0x44(r28)
    sth r31, 0x66(r28)
L_80092018:
    mr r4, r29
    addi r3, r28, 0x24
    bl fn_8005DC74
L_80092024:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80092044(void)
{
    nofralloc
    clrlwi r3, r4, 24
    extrwi r4, r4, 8, 16
    subi r6, r3, 0x40
    cmpwi r6, 0x40
    opword  0x41800008  // blt .L_8009205C
    subi r6, r6, 0x1
L_8009205C:
    cmplwi r5, 0x0
    li r3, 0x31c
    opword  0x41820008  // beq .L_8009206C
    lhz r3, 0x0(r5)
L_8009206C:
    subi r0, r4, 0x88
    clrlwi r4, r3, 16
    mulli r3, r0, 0xbc
    subi r0, r3, 0x5e
    add r3, r0, r4
    add r3, r6, r3
    blr
}

ASM void fn_80092088(void)
{
    nofralloc
    lwz r3, 0x48(r3)
    blr
}

ASM void fn_80092090(void)
{
    nofralloc
    lwz r3, 0x4c(r3)
    lhz r3, 0x10(r3)
    blr
}

ASM void fn_8009209C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r6
    stw r30, 0x18(r1)
    mr r30, r5
    li r5, 0x1
    stw r29, 0x14(r1)
    mr r29, r4
    stw r28, 0x10(r1)
    mr r28, r3
    mr r3, r29
    mr r4, r28
    bl fn_80086AF8
    mr r3, r29
    addi r4, r28, 0x1
    li r5, 0x1
    bl fn_80086AF8
    lbz r5, 0x1(r28)
    mr r3, r29
    addi r4, r28, 0x2
    bl fn_80086AF8
    lbz r0, 0x0(r28)
    cmplwi r0, 0x2
    opword  0x41820014  // beq .L_80092114
    cmplwi r0, 0x3
    opword  0x4182000C  // beq .L_80092114
    cmplwi r0, 0x4
    opword  0x40820014  // bne .L_80092124
L_80092114:
    lbz r0, 0x1(r28)
    li r4, 0x0
    add r3, r28, r0
    stb r4, 0x2(r3)
L_80092124:
    mr r3, r28
    mr r4, r30
    mr r5, r31
    bl fn_800921F8
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80092154(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    lbz r0, 0x1(r4)
    stw r31, 0x1c(r1)
    mr r31, r6
    stw r30, 0x18(r1)
    mr r30, r5
    stw r29, 0x14(r1)
    mr r29, r3
    lbz r3, 0x0(r4)
    stb r3, 0x0(r29)
    stb r0, 0x1(r29)
    lbz r5, 0x1(r29)
    cmplwi r5, 0x0
    opword  0x41820010  // beq .L_800921A0
    addi r3, r29, 0x2
    addi r4, r4, 0x2
    bl memcpy
L_800921A0:
    lbz r0, 0x0(r29)
    cmplwi r0, 0x2
    opword  0x41820014  // beq .L_800921BC
    cmplwi r0, 0x3
    opword  0x4182000C  // beq .L_800921BC
    cmplwi r0, 0x4
    opword  0x40820014  // bne .L_800921CC
L_800921BC:
    lbz r0, 0x1(r29)
    li r4, 0x0
    add r3, r29, r0
    stb r4, 0x2(r3)
L_800921CC:
    mr r3, r29
    mr r4, r30
    mr r5, r31
    bl fn_800921F8
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800921F8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    mr r6, r3
    stw r0, 0x14(r1)
    lbz r0, 0x0(r3)
    li r3, 0x0
    cmpwi r0, 0x3
    opword  0x41820034  // beq .L_80092248
    opword  0x40800014  // bge .L_8009222C
    cmpwi r0, 0x1
    opword  0x41820040  // beq .L_80092260
    opword  0x40800014  // bge .L_80092238
    opword  0x48000038  // b .L_80092260
L_8009222C:
    cmpwi r0, 0x5
    opword  0x40800030  // bge .L_80092260
    opword  0x48000024  // b .L_80092258
L_80092238:
    mr r3, r4
    addi r4, r6, 0x2
    bl fn_8007CC98
    opword  0x4800001C  // b .L_80092260
L_80092248:
    mr r4, r5
    addi r3, r6, 0x2
    bl fn_800832A0
    opword  0x4800000C  // b .L_80092260
L_80092258:
    addi r3, r6, 0x2
    bl fn_80083254
L_80092260:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80092270(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    li r7, 0x1
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r30, r6
    mr r27, r3
    mr r28, r4
    mr r29, r5
    li r6, 0x0
    lbz r0, 0x3b(r3)
    clrlwi r3, r4, 16
    clrlwi r4, r5, 16
    mr r5, r30
    rlwinm r0, r0, 0, 30, 30
    ori r0, r0, 0x1
    stb r0, 0x3b(r27)
    bl fn_8005D4BC
    mr r31, r3
    li r4, 0x20
    addi r3, r31, 0x20
    bl fn_800844C4
    stw r3, 0x3c(r27)
    li r7, 0x0
    li r6, 0x1
    li r0, 0x20
    lwz r4, 0x3c(r27)
    mr r3, r27
    li r5, 0x0
    stb r30, 0x0(r4)
    stb r7, 0x1(r4)
    sth r28, 0x2(r4)
    sth r29, 0x4(r4)
    stb r7, 0x6(r4)
    stb r7, 0x7(r4)
    stb r7, 0x8(r4)
    stb r7, 0x9(r4)
    sth r7, 0xa(r4)
    stw r7, 0xc(r4)
    stb r7, 0x10(r4)
    stb r7, 0x11(r4)
    stb r7, 0x12(r4)
    stb r7, 0x13(r4)
    stb r6, 0x14(r4)
    stb r6, 0x15(r4)
    stb r7, 0x16(r4)
    stb r7, 0x17(r4)
    stb r6, 0x18(r4)
    sth r7, 0x1a(r4)
    stw r0, 0x1c(r4)
    stw r7, 0x28(r27)
    bl fn_800923D8
    lwz r3, 0x24(r27)
    mr r4, r31
    bl DCFlushRange
    mr r3, r27
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void dtor_80092364(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x4182003C  // beq .L_800923BC
    lbz r0, 0x3b(r30)
    clrlwi. r0, r0, 31
    opword  0x4182000C  // beq .L_80092398
    lwz r3, 0x3c(r30)
    bl fn_800845A4
L_80092398:
    lbz r0, 0x3b(r30)
    rlwinm. r0, r0, 0, 30, 30
    opword  0x4182000C  // beq .L_800923AC
    lwz r3, 0x28(r30)
    bl dtor_80084580
L_800923AC:
    extsh. r0, r31
    opword  0x4081000C  // ble .L_800923BC
    mr r3, r30
    bl dtor_80084580
L_800923BC:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800923D8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    cmplwi r4, 0x0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r3
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    opword  0x41820170  // beq .L_80092568
    clrlwi r0, r5, 24
    cmplwi r0, 0x10
    opword  0x40800164  // bge .L_80092568
    stw r4, 0x20(r31)
    lwz r3, 0x20(r31)
    lwz r0, 0x1c(r3)
    add r0, r3, r0
    stw r0, 0x24(r31)
    lwz r3, 0x20(r31)
    lwz r0, 0x1c(r3)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_80092434
    addi r0, r3, 0x20
    stw r0, 0x24(r31)
L_80092434:
    li r0, 0x0
    stw r0, 0x2c(r31)
    stb r0, 0x3a(r31)
    lwz r3, 0x20(r31)
    lbz r0, 0x6(r3)
    stb r0, 0x30(r31)
    lwz r3, 0x20(r31)
    lbz r0, 0x7(r3)
    stb r0, 0x31(r31)
    lwz r3, 0x20(r31)
    lbz r0, 0x14(r3)
    stb r0, 0x32(r31)
    lwz r3, 0x20(r31)
    lbz r0, 0x15(r3)
    stb r0, 0x33(r31)
    lwz r3, 0x20(r31)
    lbz r0, 0x16(r3)
    extsb r0, r0
    sth r0, 0x34(r31)
    lwz r3, 0x20(r31)
    lbz r0, 0x17(r3)
    extsb r0, r0
    sth r0, 0x36(r31)
    lwz r3, 0x20(r31)
    lha r0, 0x1a(r3)
    sth r0, 0x38(r31)
    lwz r8, 0x20(r31)
    lhz r7, 0xa(r8)
    cmplwi r7, 0x0
    opword  0x40820010  // bne .L_800924B8
    mr r3, r31
    bl fn_80092798
    opword  0x480000B4  // b .L_80092568
L_800924B8:
    cmplwi r7, 0x100
    opword  0x40810024  // ble .L_800924E0
    clrlwi r3, r5, 24
    slwi r0, r5, 30
    srwi r3, r3, 31
    subf r0, r3, r0
    rotlwi r0, r0, 2
    add r3, r0, r3
    addi r29, r3, 0x10
    opword  0x48000008  // b .L_800924E4
L_800924E0:
    clrlwi r29, r5, 24
L_800924E4:
    lwz r3, 0x28(r31)
    cmplwi r3, 0x0
    opword  0x41820010  // beq .L_800924FC
    lbz r0, 0x3b(r31)
    rlwinm. r0, r0, 0, 30, 30
    opword  0x4082004C  // bne .L_80092544
L_800924FC:
    li r3, 0x18
    bl fn_80084370
    mr. r30, r3
    opword  0x41820024  // beq .L_8009252C
    lwz r7, 0x20(r31)
    mr r4, r29
    lwz r0, 0xc(r7)
    lbz r5, 0x9(r7)
    lbz r6, 0x1(r7)
    add r8, r7, r0
    lhz r7, 0xa(r7)
    bl fn_8008EBCC
L_8009252C:
    stw r30, 0x28(r31)
    lbz r0, 0x3b(r31)
    clrlwi r0, r0, 31
    ori r0, r0, 0x2
    stb r0, 0x3b(r31)
    opword  0x4800001C  // b .L_8009255C
L_80092544:
    lwz r0, 0xc(r8)
    mr r4, r29
    lbz r5, 0x9(r8)
    lbz r6, 0x1(r8)
    add r8, r8, r0
    bl fn_8008EBCC
L_8009255C:
    lwz r4, 0x28(r31)
    mr r3, r31
    bl fn_800926F0
L_80092568:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80092584(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmplwi r5, 0x0
    stw r0, 0x14(r1)
    opword  0x4182000C  // beq .L_800925A0
    lbz r6, 0xc(r5)
    opword  0x48000008  // b .L_800925A4
L_800925A0:
    li r6, 0x0
L_800925A4:
    bl fn_800925B8
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800925B8(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    cmplwi r4, 0x0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r3
    stw r30, 0x18(r1)
    mr r30, r6
    stw r29, 0x14(r1)
    mr r29, r5
    opword  0x418200F4  // beq .L_800926D4
    stw r4, 0x20(r31)
    lwz r3, 0x20(r31)
    lwz r0, 0x1c(r3)
    add r0, r3, r0
    stw r0, 0x24(r31)
    lwz r3, 0x20(r31)
    lwz r0, 0x1c(r3)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_80092610
    addi r0, r3, 0x20
    stw r0, 0x24(r31)
L_80092610:
    lbz r0, 0x3b(r31)
    rlwinm. r0, r0, 0, 30, 30
    opword  0x4182000C  // beq .L_80092624
    lwz r3, 0x28(r31)
    bl dtor_80084580
L_80092624:
    stw r29, 0x28(r31)
    cmplwi r29, 0x0
    li r0, 0x0
    lbz r3, 0x3b(r31)
    clrlwi r3, r3, 31
    stb r3, 0x3b(r31)
    stw r0, 0x2c(r31)
    opword  0x41820030  // beq .L_80092670
    stb r30, 0x3a(r31)
    lbz r0, 0xc(r29)
    cmpw r30, r0
    opword  0x41820020  // beq .L_80092670
    lbz r5, 0xd(r29)
    mr r3, r29
    lbz r6, 0x16(r29)
    mr r4, r30
    lhz r7, 0x14(r29)
    lwz r8, 0x10(r29)
    bl fn_8008EBCC
L_80092670:
    lwz r4, 0x20(r31)
    mr r3, r31
    lbz r0, 0x6(r4)
    stb r0, 0x30(r31)
    lwz r4, 0x20(r31)
    lbz r0, 0x7(r4)
    stb r0, 0x31(r31)
    lwz r4, 0x20(r31)
    lbz r0, 0x14(r4)
    stb r0, 0x32(r31)
    lwz r4, 0x20(r31)
    lbz r0, 0x15(r4)
    stb r0, 0x33(r31)
    lwz r4, 0x20(r31)
    lbz r0, 0x16(r4)
    extsb r0, r0
    sth r0, 0x34(r31)
    lwz r4, 0x20(r31)
    lbz r0, 0x17(r4)
    extsb r0, r0
    sth r0, 0x36(r31)
    lwz r4, 0x20(r31)
    lha r0, 0x1a(r4)
    sth r0, 0x38(r31)
    bl fn_80092748
L_800926D4:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_800926F0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r5, 0x20(r3)
    lbz r0, 0x8(r5)
    cmplwi r0, 0x0
    opword  0x41820030  // beq .L_80092738
    cmplwi r4, 0x0
    opword  0x40820018  // bne .L_80092728
    lwz r0, 0x28(r3)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_80092728
    stw r0, 0x2c(r3)
    opword  0x48000008  // b .L_8009272C
L_80092728:
    stw r4, 0x2c(r3)
L_8009272C:
    lwz r4, 0x2c(r3)
    lbz r4, 0xc(r4)
    bl fn_80092888
L_80092738:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80092748(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r4, 0x20(r3)
    lhz r0, 0xa(r4)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_8009276C
    bl fn_80092798
    opword  0x48000020  // b .L_80092788
L_8009276C:
    lwz r0, 0x28(r3)
    cmplwi r0, 0x0
    opword  0x41820014  // beq .L_80092788
    stw r0, 0x2c(r3)
    lwz r4, 0x2c(r3)
    lbz r4, 0xc(r4)
    bl fn_80092888
L_80092788:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80092798(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    li r0, 0x20
    stw r31, 0x2c(r1)
    mr r31, r3
    lwz r7, 0x20(r3)
    lbz r4, 0x10(r7)
    lwz r5, 0x1c(r7)
    neg r3, r4
    or r3, r3, r4
    cmplwi r5, 0x0
    srwi r10, r3, 31
    opword  0x41820008  // beq .L_800927D4
    mr r0, r5
L_800927D4:
    add r4, r7, r0
    lhz r5, 0x2(r7)
    lhz r6, 0x4(r7)
    mr r3, r31
    lbz r7, 0x0(r7)
    lbz r8, 0x30(r31)
    lbz r9, 0x31(r31)
    bl fn_8005D6E0
    lha r0, 0x38(r31)
    lis r5, 0x4330
    lwz r8, 0x20(r31)
    mr r3, r31
    xoris r0, r0, 0x8000
    lhz r4, 0x34(r31)
    stw r0, 0x1c(r1)
    lhz r0, 0x36(r31)
    stw r5, 0x18(r1)
    opword  0xC8428998  // lfd f2, lbl_8053B938@sda21(r0)
    lfd fp1, 0x18(r1)
    opword  0xC002898C  // lfs f0, lbl_8053B92C@sda21(r0)
    fsubs fp1, fp1, fp2
    stw r4, 0xc(r1)
    opword  0xC8828990  // lfd f4, lbl_8053B930@sda21(r0)
    stw r5, 0x8(r1)
    fdivs fp3, fp1, fp0
    opword  0xC0428988  // lfs f2, lbl_8053B928@sda21(r0)
    lfd fp1, 0x8(r1)
    stw r0, 0x14(r1)
    lbz r4, 0x32(r31)
    stw r5, 0x10(r1)
    lfd fp0, 0x10(r1)
    fsubs fp1, fp1, fp4
    lbz r5, 0x33(r31)
    fsubs fp0, fp0, fp4
    lbz r6, 0x12(r8)
    fmuls fp1, fp1, fp2
    lbz r7, 0x11(r8)
    lbz r8, 0x13(r8)
    fmuls fp2, fp0, fp2
    bl fn_8005D974
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_80092888(void)
{
    nofralloc
    stwu r1, -0x30(r1)
    mflr r0
    stw r0, 0x34(r1)
    li r0, 0x20
    stw r31, 0x2c(r1)
    mr r31, r3
    lwz r3, 0x20(r3)
    lbz r5, 0x10(r3)
    stb r4, 0x3a(r31)
    neg r3, r5
    or r3, r3, r5
    lwz r7, 0x20(r31)
    srwi r10, r3, 31
    lwz r3, 0x1c(r7)
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_800928CC
    mr r0, r3
L_800928CC:
    stw r4, 0x8(r1)
    add r4, r7, r0
    mr r3, r31
    lhz r5, 0x2(r7)
    lhz r6, 0x4(r7)
    lbz r7, 0x0(r7)
    lbz r8, 0x30(r31)
    lbz r9, 0x31(r31)
    bl fn_8005D92C
    lha r0, 0x38(r31)
    lis r5, 0x4330
    lwz r8, 0x20(r31)
    mr r3, r31
    xoris r0, r0, 0x8000
    lhz r4, 0x34(r31)
    stw r0, 0x24(r1)
    lhz r0, 0x36(r31)
    stw r5, 0x20(r1)
    opword  0xC8428998  // lfd f2, lbl_8053B938@sda21(r0)
    lfd fp1, 0x20(r1)
    opword  0xC002898C  // lfs f0, lbl_8053B92C@sda21(r0)
    fsubs fp1, fp1, fp2
    stw r4, 0x14(r1)
    opword  0xC8828990  // lfd f4, lbl_8053B930@sda21(r0)
    stw r5, 0x10(r1)
    fdivs fp3, fp1, fp0
    opword  0xC0428988  // lfs f2, lbl_8053B928@sda21(r0)
    lfd fp1, 0x10(r1)
    stw r0, 0x1c(r1)
    lbz r4, 0x32(r31)
    stw r5, 0x18(r1)
    lfd fp0, 0x18(r1)
    fsubs fp1, fp1, fp4
    lbz r5, 0x33(r31)
    fsubs fp0, fp0, fp4
    lbz r6, 0x12(r8)
    fmuls fp1, fp1, fp2
    lbz r7, 0x11(r8)
    lbz r8, 0x13(r8)
    fmuls fp2, fp0, fp2
    bl fn_8005D974
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    mtlr r0
    addi r1, r1, 0x30
    blr
}

ASM void fn_80092984(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    lwz r3, 0x2c(r3)
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_800929B0
    bl fn_8008EC0C
L_800929B0:
    mr r3, r30
    mr r4, r31
    bl fn_8005DC74
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_800929D4(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    mr r31, r8
    stw r30, 0x18(r1)
    mr r30, r7
    stw r29, 0x14(r1)
    mr r29, r6
    stw r28, 0x10(r1)
    mr r28, r3
    lbz r0, 0x3b(r3)
    clrlwi. r0, r0, 31
    opword  0x41820070  // beq .L_80092A78
    clrlwi. r0, r30, 24
    opword  0x41820028  // beq .L_80092A38
    lwz r6, 0x20(r28)
    clrlwi r3, r4, 16
    clrlwi r4, r5, 16
    lhz r5, 0x2(r6)
    lhz r0, 0x4(r6)
    clrlslwi r5, r5, 17, 1
    clrlslwi r6, r0, 17, 1
    bl fn_8005C584
    opword  0x4800001C  // b .L_80092A50
L_80092A38:
    lwz r6, 0x20(r28)
    clrlwi r3, r4, 16
    clrlwi r4, r5, 16
    lhz r5, 0x2(r6)
    lhz r6, 0x4(r6)
    bl fn_8005C584
L_80092A50:
    lwz r4, 0x20(r28)
    mr r5, r29
    clrlwi r6, r30, 24
    lhz r3, 0x2(r4)
    lhz r4, 0x4(r4)
    bl fn_8005C634
    lwz r3, 0x24(r28)
    mr r4, r31
    bl fn_8005CF70
    bl fn_8005BE5C
L_80092A78:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80092A98(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    opword  0x800D8DC0  // lwz r0, lbl_8053A980@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820024  // bne .L_80092AD8
    li r3, 0x58
    bl fn_80084370
    mr. r0, r3
    opword  0x41820010  // beq .L_80092AD4
    mr r4, r31
    bl fn_80092B38
    mr r0, r3
L_80092AD4:
    opword  0x900D8DC0  // stw r0, lbl_8053A980@sda21(r0)
L_80092AD8:
    lwz r0, 0x14(r1)
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80092AF0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    cmplwi r3, 0x0
    opword  0x41820024  // beq .L_80092B28
    opword  0x41820018  // beq .L_80092B20
    lwz r12, 0x0(r3)
    li r4, 0x1
    lwz r12, 0x8(r12)
    mtctr r12
    bctrl
L_80092B20:
    li r0, 0x0
    opword  0x900D8DC0  // stw r0, lbl_8053A980@sda21(r0)
L_80092B28:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80092B38(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r5, lbl_80499510@ha
    stw r0, 0x14(r1)
    li r0, 0x0
    stw r31, 0xc(r1)
    mr r31, r3
    addi r3, r5, lbl_80499510@l
    stw r30, 0x8(r1)
    mr r30, r4
    stw r3, 0x0(r31)
    stw r0, 0x4(r31)
    bl fn_8004BD78
    li r3, 0x1
    li r0, 0x2
    stb r3, 0x2c(r31)
    mr r3, r31
    mr r4, r30
    stw r0, 0x30(r31)
    bl fn_80092FD0
    li r3, 0x1
    bl fn_8004D0C4
    bl fn_8004CF18
    li r0, 0x0
    stw r0, 0x8(r31)
    bl fn_8004D140
    stw r3, 0xc(r31)
    li r3, 0x1
    li r0, 0x0
    stw r3, 0x10(r31)
    stw r0, 0x18(r31)
    bl OSGetTick
    lis r5, 0xa
    lis r4, fn_80092C94@ha
    addi r0, r5, 0x3930
    opword  0x906D8DC4  // stw r3, lbl_8053A984@sda21(r0)
    addi r3, r4, fn_80092C94@l
    opword  0x900D8DC8  // stw r0, lbl_8053A988@sda21(r0)
    bl fn_8004BA50
    lis r4, fn_80092F84@ha
    stw r3, 0x1c(r31)
    addi r3, r4, fn_80092F84@l
    bl fn_8004BA94
    stw r3, 0x20(r31)
    li r0, 0x0
    addi r3, r31, 0x38
    addi r4, r31, 0x34
    stw r0, 0x24(r31)
    li r5, 0x1
    stw r0, 0x28(r31)
    bl OSInitMessageQueue
    lis r3, fn_80092EFC@ha
    addi r3, r3, fn_80092EFC@l
    bl fn_8005C094
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80092C2C(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820030  // beq .L_80092C78
    lis r3, lbl_80499510@ha
    addi r0, r3, lbl_80499510@l
    stw r0, 0x0(r30)
    lwz r3, 0x1c(r30)
    bl fn_8004BA50
    lwz r3, 0x20(r30)
    bl fn_8004BA94
    extsh. r0, r31
    opword  0x4081000C  // ble .L_80092C78
    mr r3, r30
    bl dtor_80084580
L_80092C78:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80092C94(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    opword  0x808D8DC0  // lwz r4, lbl_8053A980@sda21(r0)
    lwz r12, 0x24(r4)
    cmplwi r12, 0x0
    opword  0x4182000C  // beq .L_80092CBC
    mtctr r12
    bctrl
L_80092CBC:
    bl OSGetTick
    opword  0x800D8DC4  // lwz r0, lbl_8053A984@sda21(r0)
    opword  0x83ED8DD8  // lwz r31, lbl_8053A998@sda21(r0)
    subf r0, r0, r3
    opword  0x906D8DC4  // stw r3, lbl_8053A984@sda21(r0)
    cmplwi r31, 0x0
    opword  0x900D8DC8  // stw r0, lbl_8053A988@sda21(r0)
    opword  0x40820014  // bne .L_80092CEC
    li r3, 0x1
    bl fn_8004D0C4
    bl fn_8004CF18
    opword  0x480001CC  // b .L_80092EB4
L_80092CEC:
    opword  0x880D8DD4  // lbz r0, lbl_8053A994@sda21(r0)
    extsb. r0, r0
    opword  0x40820014  // bne .L_80092D08
    li r3, 0x0
    li r0, 0x1
    opword  0x906D8DD0  // stw r3, lbl_8053A990@sda21(r0)
    opword  0x980D8DD4  // stb r0, lbl_8053A994@sda21(r0)
L_80092D08:
    opword  0x808D8DD0  // lwz r4, lbl_8053A990@sda21(r0)
    cmplwi r4, 0x0
    opword  0x4182001C  // beq .L_80092D2C
    opword  0x80AD8DC0  // lwz r5, lbl_8053A980@sda21(r0)
    opword  0x806D8D38  // lwz r3, lbl_8053A8F8@sda21(r0)
    lwz r6, 0x4(r5)
    lhz r5, 0x4(r6)
    lhz r6, 0x6(r6)
    bl fn_80089C70
L_80092D2C:
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    lbz r0, 0x2c(r3)
    cmplwi r0, 0x1
    opword  0x4082003C  // bne .L_80092D74
    lwz r4, 0x30(r3)
    cmpwi r4, 0x0
    opword  0x40810008  // ble .L_80092D4C
    subi r4, r4, 0x1
L_80092D4C:
    stw r4, 0x30(r3)
    neg r0, r4
    or r0, r0, r4
    li r3, 0x1
    opword  0x808D8DC0  // lwz r4, lbl_8053A980@sda21(r0)
    srwi r0, r0, 31
    stb r0, 0x2c(r4)
    bl fn_8004D0C4
    bl fn_8004CF18
    opword  0x48000144  // b .L_80092EB4
L_80092D74:
    cmplwi r31, 0x0
    opword  0x40820014  // bne .L_80092D8C
    li r3, 0x1
    bl fn_8004D0C4
    bl fn_8004CF18
    opword  0x4800012C  // b .L_80092EB4
L_80092D8C:
    lwz r0, 0x10(r31)
    cmpwi r0, 0x3
    opword  0x4182000C  // beq .L_80092DA0
    cmpwi r0, 0x2
    opword  0x40820080  // bne .L_80092E1C
L_80092DA0:
    opword  0x880D8DCC  // lbz r0, lbl_8053A98C@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4082010C  // bne .L_80092EB4
    lha r3, 0x16(r31)
    extsh. r0, r3
    sth r3, 0x18(r31)
    opword  0x40800014  // bge .L_80092DCC
    li r3, 0x1
    bl fn_8004D0C4
    bl fn_8004CF18
    opword  0x480000EC  // b .L_80092EB4
L_80092DCC:
    lha r3, 0x18(r31)
    extsh. r0, r3
    opword  0x41800010  // blt .L_80092DE4
    slwi r0, r3, 2
    lwzx r3, r31, r0
    opword  0x48000008  // b .L_80092DE8
L_80092DE4:
    li r3, 0x0
L_80092DE8:
    bl fn_8004D048
    bl fn_8004CF18
    li r3, 0x0
    bl fn_8004D0C4
    lha r3, 0x18(r31)
    extsh. r0, r3
    opword  0x41800010  // blt .L_80092E10
    slwi r0, r3, 2
    lwzx r0, r31, r0
    opword  0x48000008  // b .L_80092E14
L_80092E10:
    li r0, 0x0
L_80092E14:
    opword  0x900D8DD0  // stw r0, lbl_8053A990@sda21(r0)
    opword  0x4800009C  // b .L_80092EB4
L_80092E1C:
    cmpwi r0, 0x1
    opword  0x40820094  // bne .L_80092EB4
    lwz r0, 0x1c(r31)
    cmpwi r0, 0x0
    opword  0x40820084  // bne .L_80092EB0
    lha r3, 0x16(r31)
    extsh. r0, r3
    opword  0x41800070  // blt .L_80092EA8
    sth r3, 0x18(r31)
    lha r3, 0x18(r31)
    extsh. r0, r3
    opword  0x41800010  // blt .L_80092E58
    slwi r0, r3, 2
    lwzx r3, r31, r0
    opword  0x48000008  // b .L_80092E5C
L_80092E58:
    li r3, 0x0
L_80092E5C:
    li r4, 0x1
    bl fn_8005CE08
    bl fn_8005BA0C
    li r0, 0x2
    stw r0, 0x1c(r31)
    lha r3, 0x18(r31)
    extsh. r0, r3
    opword  0x41800010  // blt .L_80092E88
    slwi r0, r3, 2
    lwzx r0, r31, r0
    opword  0x48000008  // b .L_80092E8C
L_80092E88:
    li r0, 0x0
L_80092E8C:
    opword  0x900D8DD0  // stw r0, lbl_8053A990@sda21(r0)
    bl fn_8004D0B4
    cmplwi r3, 0x0
    opword  0x41820018  // beq .L_80092EB0
    li r3, 0x0
    bl fn_8004D0C4
    opword  0x4800000C  // b .L_80092EB0
L_80092EA8:
    li r3, 0x1
    bl fn_8004D0C4
L_80092EB0:
    bl fn_8004CF18
L_80092EB4:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80092EC8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    li r0, 0x1
    opword  0x980D8DCC  // stb r0, lbl_8053A98C@sda21(r0)
    bl fn_8005BD44
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80092EF0(void)
{
    nofralloc
    li r0, 0x0
    opword  0x980D8DCC  // stb r0, lbl_8053A98C@sda21(r0)
    blr
}

ASM void fn_80092EFC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    opword  0x808D8DD8  // lwz r4, lbl_8053A998@sda21(r0)
    cmplwi r4, 0x0
    opword  0x41820064  // beq .L_80092F74
    li r3, 0x0
    opword  0x986D8DCC  // stb r3, lbl_8053A98C@sda21(r0)
    lwz r0, 0x10(r4)
    cmpwi r0, 0x1
    opword  0x40820050  // bne .L_80092F74
    lwz r0, 0x1c(r4)
    cmpwi r0, 0x1
    opword  0x40820044  // bne .L_80092F74
    stw r3, 0x1c(r4)
    lha r5, 0x16(r4)
    extsh. r0, r5
    opword  0x4180000C  // blt .L_80092F4C
    slwi r0, r5, 2
    lwzx r3, r4, r0
L_80092F4C:
    cmplwi r3, 0x0
    opword  0x41820024  // beq .L_80092F74
    extsh. r0, r5
    opword  0x41800010  // blt .L_80092F68
    slwi r0, r5, 2
    lwzx r3, r4, r0
    opword  0x48000008  // b .L_80092F6C
L_80092F68:
    li r3, 0x0
L_80092F6C:
    bl fn_8004D048
    bl fn_8004CF18
L_80092F74:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80092F84(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    opword  0x808D8DC0  // lwz r4, lbl_8053A980@sda21(r0)
    lwz r12, 0x28(r4)
    cmplwi r12, 0x0
    opword  0x4182000C  // beq .L_80092FA8
    mtctr r12
    bctrl
L_80092FA8:
    bl fn_8004D140
    opword  0x80CD8DC0  // lwz r6, lbl_8053A980@sda21(r0)
    mr r4, r3
    li r5, 0x0
    addi r3, r6, 0x38
    bl OSSendMessage
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80092FD0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lwz r5, 0x4(r3)
    cmplwi r5, 0x0
    opword  0x41820024  // beq .L_80093010
    lwz r3, 0x0(r4)
    lwz r0, 0x0(r5)
    cmpw r3, r0
    opword  0x41820014  // beq .L_80093010
    li r3, 0x1
    li r0, 0x4
    stb r3, 0x2c(r31)
    stw r0, 0x30(r31)
L_80093010:
    stw r4, 0x4(r31)
    lwz r3, 0x4(r31)
    bl fn_8004C6F0
    bl fn_8004CF18
    lbz r0, 0x2c(r31)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_80093034
    bl fn_8004C228
    bl fn_8004C228
L_80093034:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_80093048(void)
{
    nofralloc
    blr
}

ASM void fn_8009304C(void)
{
    nofralloc
    li r0, -0x1
    sth r0, 0x14(r3)
    sth r0, 0x16(r3)
    sth r0, 0x18(r3)
    blr
}

ASM void fn_80093060(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stmw r27, 0xc(r1)
    mr r27, r3
    mr r28, r4
    opword  0x800D8DD8  // lwz r0, lbl_8053A998@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820070  // bne .L_800930F0
    li r3, 0x20
    bl fn_80084370
    mr. r31, r3
    opword  0x4182005C  // beq .L_800930EC
    stw r28, 0x10(r31)
    li r3, -0x1
    li r0, 0x63
    sth r3, 0x14(r31)
    sth r3, 0x16(r31)
    sth r3, 0x18(r31)
    stw r0, 0x1c(r31)
    opword  0x806D8DC0  // lwz r3, lbl_8053A980@sda21(r0)
    lwz r3, 0x4(r3)
    lhz r30, 0x6(r3)
    lhz r29, 0x4(r3)
    lhz r4, 0x8(r3)
    mr r3, r30
    bl fn_8005C870
    mr r3, r30
    bl fn_8005C7E0
    mr r5, r3
    mr r3, r31
    mr r4, r29
    mr r6, r27
    mr r7, r28
    bl fn_80093198
L_800930EC:
    opword  0x93ED8DD8  // stw r31, lbl_8053A998@sda21(r0)
L_800930F0:
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    opword  0x806D8DD8  // lwz r3, lbl_8053A998@sda21(r0)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80093108(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    opword  0x83AD8DD8  // lwz r29, lbl_8053A998@sda21(r0)
    cmplwi r29, 0x0
    opword  0x4182004C  // beq .L_80093174
    li r31, 0x0
    mr r30, r29
L_80093134:
    addi r0, r31, 0xc
    lbzx r0, r29, r0
    cmplwi r0, 0x0
    opword  0x41820014  // beq .L_80093154
    lwz r3, 0x0(r30)
    cmplwi r3, 0x0
    opword  0x41820008  // beq .L_80093154
    bl dtor_80084580
L_80093154:
    addi r31, r31, 0x1
    addi r30, r30, 0x4
    cmpwi r31, 0x3
    opword  0x4180FFD4  // blt .L_80093134
    li r0, 0x0
    mr r3, r29
    opword  0x900D8DD8  // stw r0, lbl_8053A998@sda21(r0)
    bl dtor_80084580
L_80093174:
    li r0, 0x0
    opword  0x900D8DD8  // stw r0, lbl_8053A998@sda21(r0)
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80093198(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r7
    stw r29, 0x14(r1)
    mr. r29, r6
    stw r28, 0x10(r1)
    mr r28, r3
    opword  0x40820008  // bne .L_800931C8
    opword  0x83AD8CE8  // lwz r29, lbl_8053A8A8@sda21(r0)
L_800931C8:
    addi r3, r4, 0xf
    clrlwi r0, r5, 16
    rlwinm r3, r3, 0, 16, 27
    mr r4, r29
    mullw r0, r3, r0
    li r5, 0x20
    slwi r31, r0, 1
    mr r3, r31
    bl fn_80084514
    stw r3, 0x0(r28)
    li r0, 0x1
    cmpwi r30, 0x2
    stb r0, 0xc(r28)
    opword  0x41800024  // blt .L_80093220
    mr r3, r31
    mr r4, r29
    li r5, 0x20
    bl fn_80084514
    stw r3, 0x4(r28)
    li r0, 0x1
    stb r0, 0xd(r28)
    opword  0x48000010  // b .L_8009322C
L_80093220:
    li r0, 0x0
    stw r0, 0x4(r28)
    stb r0, 0xd(r28)
L_8009322C:
    cmpwi r30, 0x3
    opword  0x41800024  // blt .L_80093254
    mr r3, r31
    mr r4, r29
    li r5, 0x20
    bl fn_80084514
    stw r3, 0x8(r28)
    li r0, 0x1
    stb r0, 0xe(r28)
    opword  0x48000010  // b .L_80093260
L_80093254:
    li r0, 0x0
    stw r0, 0x8(r28)
    stb r0, 0xe(r28)
L_80093260:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_80093280(void)
{
    nofralloc
    psq_l fp2, 0x0(r3), 0, 0
    lfs fp1, 0x8(r3)
    ps_mul fp2, fp2, fp2
    opword  0xC00289A4  // lfs f0, lbl_8053B944@sda21(r0)
    ps_madd fp1, fp1, fp1, fp2
    ps_sum0 fp1, fp1, fp2, fp2
    fcmpu cr0, fp0, fp1
    frsqrte fp2, fp1
    beqlr
    fmuls fp1, fp1, fp2
    blr
}

ASM void fn_800932AC(void)
{
    nofralloc
    fmr fp3, fp1
    psq_l fp0, 0x0(r3), 0, 0
    psq_l fp1, 0x0(r4), 0, 0
    psq_l fp2, 0x8(r3), 1, 0
    ps_madds0 fp0, fp0, fp3, fp1
    psq_l fp1, 0x8(r4), 1, 0
    ps_madds0 fp1, fp2, fp3, fp1
    psq_st fp0, 0x0(r5), 0, 0
    psq_st fp1, 0x8(r5), 1, 0
    blr
}

ASM void fn_800932D4(void)
{
    nofralloc
    fmr fp6, fp1
    psq_l fp1, 0x0(r3), 0, 0
    fmr fp0, fp2
    psq_l fp2, 0x10(r3), 0, 0
    fmr fp5, fp3
    opword  0xC08289A0  // lfs f4, lbl_8053B940@sda21(r0)
    ps_merge00 fp0, fp6, fp0
    psq_l fp3, 0x20(r3), 0, 0
    ps_mul fp1, fp1, fp0
    ps_mul fp2, fp2, fp0
    ps_mul fp3, fp3, fp0
    psq_st fp1, 0x0(r4), 0, 0
    ps_merge00 fp0, fp5, fp4
    psq_l fp1, 0x8(r3), 0, 0
    psq_st fp2, 0x10(r4), 0, 0
    psq_l fp2, 0x18(r3), 0, 0
    ps_mul fp1, fp1, fp0
    psq_st fp3, 0x20(r4), 0, 0
    psq_l fp3, 0x28(r3), 0, 0
    ps_mul fp2, fp2, fp0
    psq_st fp1, 0x8(r4), 0, 0
    ps_mul fp3, fp3, fp0
    psq_st fp2, 0x18(r4), 0, 0
    psq_st fp3, 0x28(r4), 0, 0
    blr
}

ASM void fn_80093338(void)
{
    nofralloc
    stw r4, 0x0(r3)
    blr
}

ASM void fn_80093340(void)
{
    nofralloc
    opword  0xC00289A8  // lfs f0, lbl_8053B948@sda21(r0)
    stwu r1, -0x10(r1)
    fcmpo cr0, fp1, fp0
    cror eq, gt, eq
    opword  0x40820120  // bne .L_80093470
    fcmpo cr0, fp2, fp0
    cror eq, gt, eq
    opword  0x40820088  // bne .L_800933E4
    fcmpo cr0, fp2, fp1
    cror eq, gt, eq
    opword  0x4082003C  // bne .L_800933A4
    fcmpu cr0, fp0, fp2
    opword  0x40820008  // bne .L_80093378
    opword  0x48000218  // b .L_8009358C
L_80093378:
    opword  0xC00289B4  // lfs f0, lbl_8053B954@sda21(r0)
    opword  0xC06289B0  // lfs f3, lbl_8053B950@sda21(r0)
    fmuls fp0, fp0, fp1
    fdivs fp0, fp0, fp2
    fadds fp0, fp3, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x8(r1)
    lwz r0, 0xc(r1)
    slwi r0, r0, 2
    lfsx fp0, r3, r0
    opword  0x480001EC  // b .L_8009358C
L_800933A4:
    fcmpu cr0, fp0, fp1
    opword  0xC08289AC  // lfs f4, lbl_8053B94C@sda21(r0)
    opword  0x40820008  // bne .L_800933B4
    opword  0x4800002C  // b .L_800933DC
L_800933B4:
    opword  0xC00289B4  // lfs f0, lbl_8053B954@sda21(r0)
    opword  0xC06289B0  // lfs f3, lbl_8053B950@sda21(r0)
    fmuls fp0, fp0, fp2
    fdivs fp0, fp0, fp1
    fadds fp0, fp3, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x8(r1)
    lwz r0, 0xc(r1)
    slwi r0, r0, 2
    lfsx fp0, r3, r0
L_800933DC:
    fsubs fp0, fp4, fp0
    opword  0x480001AC  // b .L_8009358C
L_800933E4:
    fneg fp4, fp2
    fcmpo cr0, fp4, fp1
    opword  0x40800044  // bge .L_80093430
    fcmpu cr0, fp0, fp1
    opword  0xC06289AC  // lfs f3, lbl_8053B94C@sda21(r0)
    opword  0x40820008  // bne .L_80093400
    opword  0x4800002C  // b .L_80093428
L_80093400:
    opword  0xC00289B4  // lfs f0, lbl_8053B954@sda21(r0)
    opword  0xC04289B0  // lfs f2, lbl_8053B950@sda21(r0)
    fmuls fp0, fp0, fp4
    fdivs fp0, fp0, fp1
    fadds fp0, fp2, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x8(r1)
    lwz r0, 0xc(r1)
    slwi r0, r0, 2
    lfsx fp0, r3, r0
L_80093428:
    fadds fp0, fp3, fp0
    opword  0x48000160  // b .L_8009358C
L_80093430:
    fcmpu cr0, fp0, fp4
    opword  0xC06289BC  // lfs f3, lbl_8053B95C@sda21(r0)
    opword  0x40820008  // bne .L_80093440
    opword  0x4800002C  // b .L_80093468
L_80093440:
    opword  0xC00289B4  // lfs f0, lbl_8053B954@sda21(r0)
    opword  0xC04289B0  // lfs f2, lbl_8053B950@sda21(r0)
    fmuls fp0, fp0, fp1
    fdivs fp0, fp0, fp4
    fadds fp0, fp2, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x8(r1)
    lwz r0, 0xc(r1)
    slwi r0, r0, 2
    lfsx fp0, r3, r0
L_80093468:
    fsubs fp0, fp3, fp0
    opword  0x48000120  // b .L_8009358C
L_80093470:
    fcmpo cr0, fp2, fp0
    fneg fp4, fp1
    opword  0x40800094  // bge .L_8009350C
    fneg fp3, fp2
    fcmpo cr0, fp3, fp4
    cror eq, gt, eq
    opword  0x40820044  // bne .L_800934CC
    fcmpu cr0, fp0, fp3
    opword  0xC04289C0  // lfs f2, lbl_8053B960@sda21(r0)
    opword  0x40820008  // bne .L_8009349C
    opword  0x4800002C  // b .L_800934C4
L_8009349C:
    opword  0xC00289B4  // lfs f0, lbl_8053B954@sda21(r0)
    opword  0xC02289B0  // lfs f1, lbl_8053B950@sda21(r0)
    fmuls fp0, fp0, fp4
    fdivs fp0, fp0, fp3
    fadds fp0, fp1, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x8(r1)
    lwz r0, 0xc(r1)
    slwi r0, r0, 2
    lfsx fp0, r3, r0
L_800934C4:
    fadds fp0, fp2, fp0
    opword  0x480000C4  // b .L_8009358C
L_800934CC:
    fcmpu cr0, fp0, fp4
    opword  0xC04289B8  // lfs f2, lbl_8053B958@sda21(r0)
    opword  0x40820008  // bne .L_800934DC
    opword  0x4800002C  // b .L_80093504
L_800934DC:
    opword  0xC00289B4  // lfs f0, lbl_8053B954@sda21(r0)
    opword  0xC02289B0  // lfs f1, lbl_8053B950@sda21(r0)
    fmuls fp0, fp0, fp3
    fdivs fp0, fp0, fp4
    fadds fp0, fp1, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x8(r1)
    lwz r0, 0xc(r1)
    slwi r0, r0, 2
    lfsx fp0, r3, r0
L_80093504:
    fsubs fp0, fp2, fp0
    opword  0x48000084  // b .L_8009358C
L_8009350C:
    fcmpo cr0, fp2, fp4
    opword  0x40800044  // bge .L_80093554
    fcmpu cr0, fp0, fp4
    opword  0xC06289B8  // lfs f3, lbl_8053B958@sda21(r0)
    opword  0x40820008  // bne .L_80093524
    opword  0x4800002C  // b .L_8009354C
L_80093524:
    opword  0xC00289B4  // lfs f0, lbl_8053B954@sda21(r0)
    opword  0xC02289B0  // lfs f1, lbl_8053B950@sda21(r0)
    fmuls fp0, fp0, fp2
    fdivs fp0, fp0, fp4
    fadds fp0, fp1, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x8(r1)
    lwz r0, 0xc(r1)
    slwi r0, r0, 2
    lfsx fp0, r3, r0
L_8009354C:
    fadds fp0, fp3, fp0
    opword  0x4800003C  // b .L_8009358C
L_80093554:
    fcmpu cr0, fp0, fp2
    opword  0x40820008  // bne .L_80093560
    opword  0x4800002C  // b .L_80093588
L_80093560:
    opword  0xC00289B4  // lfs f0, lbl_8053B954@sda21(r0)
    opword  0xC02289B0  // lfs f1, lbl_8053B950@sda21(r0)
    fmuls fp0, fp0, fp4
    fdivs fp0, fp0, fp2
    fadds fp0, fp1, fp0
    fctiwz fp0, fp0
    stfd fp0, 0x8(r1)
    lwz r0, 0xc(r1)
    slwi r0, r0, 2
    lfsx fp0, r3, r0
L_80093588:
    fneg fp0, fp0
L_8009358C:
    fmr fp1, fp0
    addi r1, r1, 0x10
    blr
}

