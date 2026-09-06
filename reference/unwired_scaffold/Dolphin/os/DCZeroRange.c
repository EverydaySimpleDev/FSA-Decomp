#include <types.h>

//80163034
void DCZeroRange(register void* startAddress, register u32 nBytes)
{
#ifdef __MWERKS__ // clang-format off
    asm {
        cmplwi nBytes, 0
        blelr
        clrlwi r5, startAddress, 27
        add nBytes, nBytes, r5
        addi nBytes, nBytes, 0x1f
        srwi nBytes, nBytes, 5
        mtctr nBytes
    loop:
        dcbz 0, startAddress
        addi startAddress, startAddress, 0x20
        bdnz loop
    }
#endif // clang-format on
}
