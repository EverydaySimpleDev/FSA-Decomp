#include <robj.h>

extern HSD_ObjAllocData lbl_8064C800;
extern HSD_ObjAllocData lbl_8064C82C;

//801D0C80
void HSD_RObjInitAllocData(void)
{
	HSD_ObjAllocInit(&lbl_8064C800, sizeof(HSD_RObj), 4);
	HSD_ObjAllocInit(&lbl_8064C82C, sizeof(HSD_Rvalue), 4);
}
