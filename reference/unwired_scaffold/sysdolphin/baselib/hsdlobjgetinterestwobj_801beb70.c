#include <lobj.h>

//801BEB70
HSD_WObj* HSD_LObjGetInterestWObj(HSD_LObj* lobj)
{
	if (lobj != NULL) {
		return lobj->interest;
	}
	return NULL;
}
