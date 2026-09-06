#include <aobj.h>

extern HSD_ObjAllocData lbl_8064AE48;

//801BA7C8
void HSD_AObjInitAllocData(void)
{
	HSD_ObjAllocInit(&lbl_8064AE48, sizeof(HSD_AObj), 4);
}
