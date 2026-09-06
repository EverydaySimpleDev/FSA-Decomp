#include <lobj.h>

extern char lbl_8065AE70[8];   // "lobj.c"
extern char lbl_8065AE84[8];   // "lobj"
extern char lbl_80259CFC[0x34]; // "lobj->interest"

//801BEA90
void HSD_LObjSetInterest(HSD_LObj* lobj, Vec3* interest)
{
	((lobj) ? ((void)0) : __assert(lbl_8065AE70, 0x593, lbl_8065AE84));
	if (lobj->interest == NULL) {
		lobj->interest = HSD_WObjAlloc();
		((lobj->interest) ? ((void)0) : __assert(lbl_8065AE70, 0x596, lbl_80259CFC));
	}
	HSD_WObjSetPosition(lobj->interest, interest);
}
