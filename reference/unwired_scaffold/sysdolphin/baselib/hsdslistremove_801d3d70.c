#include <list.h>

extern HSD_ObjAllocData lbl_8064CA18;

//801D3D70
HSD_SList* HSD_SListRemove(HSD_SList* list)
{
	HSD_SList* next;

	if (list != NULL) {
		next = list->next;
		HSD_ObjFree(&lbl_8064CA18, list);
		return next;
	}

	return NULL;
}
