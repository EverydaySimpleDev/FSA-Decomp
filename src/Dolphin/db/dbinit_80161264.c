#include <types.h>
#include "Dolphin/OS/OSContext.h"

extern void* __DBInterface;
extern int DBVerbose;
extern char lbl_804955E0[0x18];

extern void OSReport(const char* msg, ...);
extern void OSDumpContext(OSContext* context);
extern void PPCHalt(void);
extern void __DBExceptionDestination(void);

//80161264
ASM void DBInit(void)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    lis     r4, 0x8000
    addi    r0, r4, 0x40
    lis     r3, __DBExceptionDestination@ha
    stw     r0, __DBInterface
    addi    r3, r3, __DBExceptionDestination@l
    addis   r0, r3, 0x8000
    stw     r0, 0x48(r4)
    li      r0, 0x1
    stw     r0, DBVerbose
    blr
#endif // clang-format on
}

//8016128C
ASM void __DBExceptionDestinationAux(void)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    mflr    r0
    lis     r3, lbl_804955E0@ha
    stw     r0, 0x4(r1)
    addi    r3, r3, lbl_804955E0@l
    crclr   6
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    lwz     r4, 0xc0(r0)
    addis   r31, r4, 0x8000
    bl      OSReport
    mr      r3, r31
    bl      OSDumpContext
    bl      PPCHalt
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
#endif // clang-format on
}
