#include <baselib/fobj.h>

extern HSD_ObjAllocData lbl_8064AEA0;

//801C3B20
void HSD_FObjFree(HSD_FObj* fobj)
{
	HSD_ObjFree(&lbl_8064AEA0, fobj);
}
