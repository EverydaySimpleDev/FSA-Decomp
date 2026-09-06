#include <list.h>

extern HSD_ObjAllocData lbl_8064CA18;
extern HSD_ObjAllocData lbl_8064CA44;

//801D3B10
void HSD_ListInitAllocData(void)
{
	HSD_ObjAllocInit(&lbl_8064CA18, sizeof(HSD_SList), 4);
	HSD_ObjAllocInit(&lbl_8064CA44, sizeof(HSD_DList), 4);
}
