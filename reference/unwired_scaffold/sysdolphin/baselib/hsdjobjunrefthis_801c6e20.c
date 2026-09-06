#include <jobj.h>

static inline bool iref_none(void* o)
{
	return HSD_OBJ(o)->ref_count_individual == 0;
}

static inline bool iref_DEC_alt(void* o)
{
	bool ret = iref_none(o);
	if (ret) {
		return ret;
	}
	HSD_OBJ(o)->ref_count_individual -= 1;
	return HSD_OBJ(o)->ref_count_individual == 0;
}

//801C6E20
void HSD_JObjUnrefThis(HSD_JObj* jobj)
{
	if (jobj != NULL && iref_DEC_alt(jobj) && ref_CNT(jobj) < 0) {
		hsdDelete(jobj);
	}
}
