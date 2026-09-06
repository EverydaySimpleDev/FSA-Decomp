#include <types.h>

extern void cbForStateMotorStopped(int);
extern int DVDLowWaitCoverClose(void* callback);

//8016EB08
ASM int DVDLowWaitMotorStopped(void)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    mflr    r0
    lis     r3, cbForStateMotorStopped@ha
    stw     r0, 0x4(r1)
    addi    r3, r3, cbForStateMotorStopped@l
    stwu    r1, -0x8(r1)
    bl      DVDLowWaitCoverClose
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
#endif // clang-format on
}
