#include <mobj.h>

//801B8F04
void HSD_MObjAddAnim(HSD_MObj* mobj, HSD_MatAnim* matanim)
{
	if (mobj == NULL) {
		return;
	}

	if (matanim != NULL) {
		if (mobj->aobj != NULL) {
			HSD_AObjRemove(mobj->aobj);
		}
		mobj->aobj = HSD_AObjLoadDesc(matanim->aobjdesc);
		HSD_TObjAddAnimAll(mobj->tobj, matanim->texanim);
	}
}
