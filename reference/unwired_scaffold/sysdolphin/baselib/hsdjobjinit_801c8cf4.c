#include <jobj.h>

extern char lbl_80259F18[0x54]; // hsdJObj
extern f32 lbl_8065FB00; // 1.0f

//801C8CF4
int JObjInit(HSD_Class* o)
{
	HSD_ClassInfo* parentInfo = *(HSD_ClassInfo**)(lbl_80259F18 + 0x14);
	int status = parentInfo->init(o);
	if (status >= 0) {
		HSD_JObj* jobj = (HSD_JObj*)o;
		f32 one;
		jobj->flags = JOBJ_MTX_DIRTY;
		one = lbl_8065FB00;
		status = 0;
		jobj->scale.x = one;
		jobj->scale.y = one;
		jobj->scale.z = one;
	}
	return status;
}
