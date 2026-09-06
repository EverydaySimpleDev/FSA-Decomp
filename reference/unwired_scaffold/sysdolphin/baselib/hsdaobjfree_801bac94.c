#include <aobj.h>

extern HSD_ObjAllocData lbl_8064AE48;

//801BAC94
void HSD_AObjFree(HSD_AObj* aobj)
{
	if (!aobj) {
		return;
	}

	HSD_ObjFree(&lbl_8064AE48, (HSD_ObjAllocLink*)aobj);
}
