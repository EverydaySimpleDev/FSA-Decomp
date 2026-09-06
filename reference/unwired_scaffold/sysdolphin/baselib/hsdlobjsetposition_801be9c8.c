#include <lobj.h>

extern char lbl_8065AE70[8];   // "lobj.c"
extern char lbl_8065AE84[8];   // "lobj"
extern char lbl_80259CEC[0x10]; // "lobj->position"

//801BE9C8
void HSD_LObjSetPosition(HSD_LObj* lobj, Vec3* position)
{
	((lobj) ? ((void)0) : __assert(lbl_8065AE70, 0x56f, lbl_8065AE84));
	if (lobj->position == NULL) {
		lobj->position = HSD_WObjAlloc();
		((lobj->position) ? ((void)0) : __assert(lbl_8065AE70, 0x572, lbl_80259CEC));
	}
	HSD_WObjSetPosition(lobj->position, position);
}
