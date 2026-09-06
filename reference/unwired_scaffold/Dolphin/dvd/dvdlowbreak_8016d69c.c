#include <types.h>

extern int StopAtNextInt;
extern int lbl_8065B510;

//8016D69C
ASM int DVDLowBreak(void)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    li      r0, 0x1
    stw     r0, StopAtNextInt
    li      r3, 0x1
    stw     r0, lbl_8065B510
    blr
#endif // clang-format on
}
