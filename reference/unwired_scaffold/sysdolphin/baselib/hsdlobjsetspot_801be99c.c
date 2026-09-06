#include <lobj.h>

//801BE99C
void HSD_LObjSetSpot(HSD_LObj* lobj, f32 cutoff, s32 point_func)
{
	if (lobj != NULL) {
		lobj->u.point.cutoff = cutoff;
		lobj->u.point.point_func = point_func;
	}
}
