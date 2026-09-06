#include "types.h"
#include "Dolphin/os.h"

//8006DFA8
ASM int fwide(register void* stream, register int mode)
{
    nofralloc
    cmplwi  r3, 0x0
    beq     L_8006DFBC
    lhz     r0, 0x4(r3)
    extrwi. r0, r0, 3, 23
    bne     L_8006DFC4
L_8006DFBC:
    li      r3, 0x0
    blr
L_8006DFC4:
    lbz     r5, 0x5(r3)
    extrwi  r0, r5, 2, 26
    cmpwi   r0, 0x1
    beq     L_8006E028
    bge     L_8006DFE4
    cmpwi   r0, 0x0
    bge     L_8006DFF0
    blr
L_8006DFE4:
    cmpwi   r0, 0x3
    bgelr
    b       L_8006E020
L_8006DFF0:
    cmpwi   r4, 0x0
    ble     L_8006E008
    li      r0, 0x2
    rlwimi  r5, r0, 4, 26, 27
    stb     r5, 0x5(r3)
    b       L_8006E018
L_8006E008:
    bge     L_8006E018
    li      r0, 0x1
    rlwimi  r5, r0, 4, 26, 27
    stb     r5, 0x5(r3)
L_8006E018:
    mr      r3, r4
    blr
L_8006E020:
    li      r3, 0x1
    blr
L_8006E028:
    li      r3, -0x1
    blr
}

extern u8 lbl_8053A740;
extern int fn_80073938(register s32 fd);
extern int fn_800739A8(register void* a, register s32 b);
extern void fn_80066280(register void* a, register void* b, register void* c, register void* d);

//8006E030
ASM int fn_8006E030(register void* a, register void* b, register void* c, register void* d)
{
    nofralloc
    stwu    r1, -0x20(r1)
    mflr    r0
    stw     r0, 0x24(r1)
    stw     r31, 0x1c(r1)
    mr      r31, r6
    stw     r30, 0x18(r1)
    mr      r30, r5
    stw     r29, 0x14(r1)
    mr      r29, r4
    stw     r28, 0x10(r1)
    mr      r28, r3
    bl      OSGetConsoleType
    rlwinm. r0, r3, 0, 2, 2
    bne     L_8006E0C8
    lwz     r0, lbl_8053A740
    li      r3, 0x0
    cmpwi   r0, 0x0
    bne     L_8006E094
    lis     r3, 0x1
    subi    r3, r3, 0x1f00
    bl      fn_80073938
    cmpwi   r3, 0x0
    bne     L_8006E094
    li      r0, 0x1
    stw     r0, lbl_8053A740
L_8006E094:
    cmpwi   r3, 0x0
    beq     L_8006E0A4
    li      r3, 0x1
    b       L_8006E0E0
L_8006E0A4:
    lwz     r4, 0x0(r30)
    mr      r3, r29
    bl      fn_800739A8
    cmpwi   r3, 0x0
    beq     L_8006E0C8
    li      r0, 0x0
    li      r3, 0x1
    stw     r0, 0x0(r30)
    b       L_8006E0E0
L_8006E0C8:
    mr      r3, r28
    mr      r4, r29
    mr      r5, r30
    mr      r6, r31
    bl      fn_80066280
    li      r3, 0x0
L_8006E0E0:
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    lwz     r29, 0x14(r1)
    lwz     r28, 0x10(r1)
    mtlr    r0
    addi    r1, r1, 0x20
    blr
}
