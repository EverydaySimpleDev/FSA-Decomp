#include <list.h>

extern char lbl_8065AFE8[8]; // "list.c"
extern char lbl_8065AFF8[8]; // "next"

//801D3CB0
HSD_SList* HSD_SListAppendList(HSD_SList* list, HSD_SList* next)
{
	((next) ? ((void)0) : __assert(lbl_8065AFE8, 0xb3, lbl_8065AFF8));

	if (list != NULL) {
		next->next = list->next;
		list->next = next;
		return list;
	} else {
		next->next = NULL;
		return next;
	}
}
