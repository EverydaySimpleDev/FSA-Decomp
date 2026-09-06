#include <pobj.h>

//801AEB70
void HSD_PObjClearFlags(HSD_PObj* pobj, u32 flags)
{
	if (pobj != NULL) {
		pobj->flags &= ~flags;
	}
}
