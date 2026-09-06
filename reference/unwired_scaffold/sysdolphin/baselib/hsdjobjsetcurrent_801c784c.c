#include <jobj.h>

extern char lbl_80259F18[0x54]; // hsdJObj (used here only as a base for nearby string offsets)
extern HSD_JObj* lbl_8065B9F4; // current_jobj

static inline void jobj_iref_INC(void* o, char* base)
{
	HSD_OBJ(o)->ref_count_individual += 1;
	HSD_OBJ(o)->ref_count_individual != 0
		? (void)0
		: __assert(base + 0x1e0, 0x9e, base + 0x214);
}


//801C784C
void HSD_JObjSetCurrent(HSD_JObj* jobj)
{
	char* base = lbl_80259F18;
	HSD_JObj* unrefTarget = lbl_8065B9F4;

	if (jobj != NULL) {
		HSD_OBJ(jobj)->ref_count++;
		((HSD_OBJ(jobj)->ref_count != HSD_OBJ_NOREF) ? ((void)0)
													  : __assert(base + 0x1e0, 0x5d, base + 0x1ec));
	}

	if (unrefTarget != NULL && ref_DEC(unrefTarget)) {
		if (iref_CNT(unrefTarget) - 1 < 0) {
			hsdDelete(unrefTarget);
		} else {
			jobj_iref_INC(unrefTarget, base);
			HSD_JOBJ_METHOD(unrefTarget)->release_child(unrefTarget);
			if (iref_DEC(unrefTarget)) {
				hsdDelete(unrefTarget);
			}
		}
	}

	lbl_8065B9F4 = jobj;
}
