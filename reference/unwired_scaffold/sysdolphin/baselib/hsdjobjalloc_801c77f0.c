#include <jobj.h>

extern HSD_ClassInfo* lbl_8065B9E0;
extern HSD_ClassInfo lbl_80259F18;
extern char lbl_8065AED8[8]; // "jobj.c"
extern char lbl_8065AED0[8]; // "jobj"

//801C77F0
HSD_JObj* HSD_JObjAlloc(void)
{
	HSD_JObj* jobj = hsdNew(lbl_8065B9E0 != NULL ? lbl_8065B9E0 : &lbl_80259F18);
	((jobj) ? ((void)0) : __assert(lbl_8065AED8, 0x7d6, lbl_8065AED0));
	return jobj;
}
