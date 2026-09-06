#include <aobj.h>

//801BA810
void HSD_AObjSetFlags(HSD_AObj* aobj, u32 flags)
{
	if (aobj) {
		flags &= (AOBJ_LOOP | AOBJ_NO_UPDATE);
		aobj->flags |= flags;
	}
}
