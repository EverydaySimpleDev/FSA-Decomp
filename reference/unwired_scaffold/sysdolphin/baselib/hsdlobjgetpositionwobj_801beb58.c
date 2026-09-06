#include <lobj.h>

//801BEB58
HSD_WObj* HSD_LObjGetPositionWObj(HSD_LObj* lobj)
{
	if (lobj != NULL) {
		return lobj->position;
	}
	return NULL;
}
