#include <list.h>

#include <string.h>

extern HSD_ObjAllocData lbl_8064CA18;
extern char lbl_8065AFE8[8]; // "list.c"
extern char lbl_8065AFF0[8]; // "list"

static inline HSD_SList* SListAllocInline(void)
{
	HSD_SList* list = HSD_ObjAlloc(&lbl_8064CA18);
	((list) ? ((void)0) : __assert(lbl_8065AFE8, 0x4c, lbl_8065AFF0));
	memset(list, 0, sizeof(HSD_SList));
	return list;
}

//801D3BB0
HSD_SList* HSD_SListAllocAndAppend(HSD_SList* next, void* data)
{
	HSD_SList* list;

	list = SListAllocInline();
	list->data = data;

	return HSD_SListAppendList(next, list);
}
