#include <pobj.h>

//801AEB88
void HSD_PObjSetFlags(HSD_PObj* pobj, u32 flags)
{
	if (pobj != NULL) {
		pobj->flags |= flags;
	}
}
