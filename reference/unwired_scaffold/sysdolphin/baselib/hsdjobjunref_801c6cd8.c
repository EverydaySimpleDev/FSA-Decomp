#include <jobj.h>

extern char lbl_8025A0F8[0xC];  // "object.h"
extern char lbl_8025A12C[0x1B4]; // "HSD_OBJ(o)->ref_count_individual != 0"

static inline void jobj_iref_INC(void* o)
{
	HSD_OBJ(o)->ref_count_individual += 1;
	HSD_OBJ(o)->ref_count_individual != 0
		? (void)0
		: __assert(lbl_8025A0F8, 0x9e, lbl_8025A12C);
}

//801C6CD8
void HSD_JObjUnref(HSD_JObj* jobj)
{
	if (jobj != NULL && ref_DEC(jobj)) {
		if (iref_CNT(jobj) - 1 < 0) {
			hsdDelete(jobj);
		} else {
			jobj_iref_INC(jobj);
			HSD_JOBJ_METHOD(jobj)->release_child(jobj);
			if (iref_DEC(jobj)) {
				hsdDelete(jobj);
			}
		}
	}
}
