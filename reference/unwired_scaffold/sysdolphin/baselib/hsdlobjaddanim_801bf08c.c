#include <lobj.h>

//801BF08C
void HSD_LObjAddAnim(HSD_LObj* lobj, HSD_LightAnim* lanim)
{
	if (lobj == NULL) {
		return;
	}

	if (lanim != NULL) {
		if (lobj->aobj) {
			HSD_AObjRemove(lobj->aobj);
		}
		lobj->aobj = HSD_AObjLoadDesc(lanim->aobjdesc);
		HSD_WObjAddAnim(lobj != NULL ? lobj->position : NULL, lanim->position_anim);
		HSD_WObjAddAnim(lobj != NULL ? lobj->interest : NULL, lanim->interest_anim);
	}
}
