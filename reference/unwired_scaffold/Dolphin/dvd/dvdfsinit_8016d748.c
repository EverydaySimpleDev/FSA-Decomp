#include "types.h"
#include "Dolphin/dvd.h"
#include "Dolphin/os.h"

typedef struct FSTEntry FSTEntry;

struct FSTEntry {
	uint isDirAndStringOff;
	uint parentOrPosition;
	uint nextEntryOrLength;
};

static OSBootInfo* BootInfo;
FSTEntry* FstStart;
char* FstStringStart;
u32 MaxEntryNum;

//8016D748
ASM void __DVDFSInit()
{
    nofralloc
    lis     r3, 0x8000
    stw     r3, BootInfo
    lwz     r0, 0x38(r3)
    stw     r0, FstStart
    lwz     r3, FstStart
    cmplwi  r3, 0x0
    beqlr
    lwz     r0, 0x8(r3)
    stw     r0, MaxEntryNum
    lwz     r0, MaxEntryNum
    mulli   r0, r0, 0xc
    add     r0, r3, r0
    stw     r0, FstStringStart
    blr
}
