#include <aobj.h>

//801BA7F8
u32 HSD_AObjGetFlags(HSD_AObj* aobj)
{
	return (aobj) ? aobj->flags : 0;
}
