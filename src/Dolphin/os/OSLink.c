#include "types.h"

#define OS_MODULE_LIST_ADDR  0x800030C8
#define OS_STRING_TABLE_ADDR 0x800030D0
#define OS_BASE_CACHED       0x80003000

/**
 * @note Address: 0x800EF4A4
 * @note Size: 0x18
 */
struct OSModuleQueue { /* Relocatable Module Queue @ 800030c8 */
	int* pFirst;
	int* pLast;
};

struct OSModuleQueue __OSModuleInfoList : (OS_BASE_CACHED | OS_MODULE_LIST_ADDR);
const void* __OSStringTable : (OS_BASE_CACHED | OS_STRING_TABLE_ADDR);

//80042EA4
ASM void __OSModuleInit(void)
{
	nofralloc
	lis r4, 0x8000
	li  r0, 0x0
	stw r0, 0x30cc(r4)
	stw r0, 0x30c8(r4)
	stw r0, 0x30d0(r4)
	blr
}
