#include <class.h>

struct HSD_DObjInfo {
	HSD_ClassInfo parent;
	void* disp;
	void* load;
};

extern HSD_ClassInfo* lbl_8065B970; // default_class
extern HSD_DObjInfo lbl_80259200;   // hsdDObj
extern char lbl_8065AE10[8];        // "dobj.c"
extern char lbl_8065AE1C[0xC];      // "dobj"

//801B7E00
HSD_DObj* HSD_DObjAlloc(void)
{
	HSD_DObj* dobj = (HSD_DObj*)hsdNew(lbl_8065B970 ? lbl_8065B970 : &lbl_80259200.parent);
	if (dobj == NULL) {
		__assert(lbl_8065AE10, 0x214, lbl_8065AE1C);
	}
	return dobj;
}
