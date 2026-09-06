#include <list.h>

extern char lbl_8065AFE8[8]; // "list.c"
extern char lbl_8065B000[8]; // "prev"

//801D3D20
HSD_SList* HSD_SListPrependList(HSD_SList* list, HSD_SList* prev)
{
	((prev) ? ((void)0) : __assert(lbl_8065AFE8, 0xca, lbl_8065B000));
	prev->next = list;
	return prev;
}
