#include <baselib/fobj.h>

extern HSD_ObjAllocData lbl_8064AEA0;

//801C1DD0
void HSD_FObjInitAllocData(void)
{
	HSD_ObjAllocInit(&lbl_8064AEA0, sizeof(HSD_FObj), 4);
}

//801C1E00
void HSD_FObjRemove(HSD_FObj* fobj)
{
	if (!fobj) {
		return;
	}

	HSD_FObjFree(fobj);
}

//801C1E28
void HSD_FObjRemoveAll(HSD_FObj* fobj)
{
	if (fobj == NULL) {
		return;
	}
	HSD_FObjRemoveAll(fobj->next);
	HSD_FObjRemove(fobj);
}
