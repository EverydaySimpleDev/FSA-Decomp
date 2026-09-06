#include <aobj.h>
#include <string.h>

extern HSD_ObjAllocData lbl_8064AE48;
extern char lbl_8065AE60[8];
extern char lbl_8065AE68[4];
extern f32 lbl_8065FA24;

//801BAC28
HSD_AObj* HSD_AObjAlloc(void)
{
	HSD_AObj* new = (HSD_AObj*)HSD_ObjAlloc(&lbl_8064AE48);
	((new) ? ((void)0) : __assert(lbl_8065AE60, 0x1e9, lbl_8065AE68));

	memset(new, 0, sizeof(HSD_AObj));
	new->flags = AOBJ_NO_ANIM;
	new->framerate = lbl_8065FA24;
	return new;
}
