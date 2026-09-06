#include <aobj.h>
#include <jobj.h>

//801BABB8
void HSD_AObjRemove(HSD_AObj* aobj)
{
	if (!aobj) {
		return;
	}

	if (aobj) {
		if (aobj->fobj) {
			HSD_FObjRemoveAll(aobj->fobj);
		}
		aobj->fobj = NULL;
	}

	if (aobj) {
		if (aobj->hsd_obj != NULL) {
			HSD_JObjUnref((HSD_JObj*)aobj->hsd_obj);
		}
		aobj->hsd_obj = NULL;
	}
	HSD_AObjFree(aobj);
}
