#include <types.h>

//801D0524
u32 HSD_GetNbBits(u32 x)
{
	u32 count = 0;
	u32 i;
	for (i = 0; i < 32; i++) {
		if (x & (1 << i)) {
			count++;
		}
	}
	return count;
}
