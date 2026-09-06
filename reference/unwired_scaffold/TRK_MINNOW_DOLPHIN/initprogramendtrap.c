#include <types.h>
#include "TRK_MINNOW_DOLPHIN/MetroTRK/Portable/mem_TRK.h"
#include "Dolphin/OS/OSCache.h"
#include "Dolphin/PPCArch.h"

//8014FC50
void InitializeProgramEndTrap(void)
{
    static const char EndofProgramInstruction[4] = { 0x00, 0x45, 0x4E, 0x44 };
    TRK_memcpy((char*)PPCHalt + 4, EndofProgramInstruction, 4);
    ICInvalidateRange((char*)PPCHalt + 4, 4);
    DCFlushRange((char*)PPCHalt + 4, 4);
}
