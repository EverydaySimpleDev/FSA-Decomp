#include <lobj.h>

//801BE9B0
void HSD_LObjSetDistAttn(HSD_LObj* lobj, f32 ref_dist, f32 ref_br, s32 dist_func)
{
	if (lobj != NULL) {
		lobj->u.point.ref_dist = ref_dist;
		lobj->u.point.ref_br = ref_br;
		lobj->u.point.dist_func = dist_func;
	}
}
