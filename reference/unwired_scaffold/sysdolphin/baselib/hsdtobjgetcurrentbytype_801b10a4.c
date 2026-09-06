#include <tobj.h>

extern HSD_TObj* lbl_8065B8F4; // tobj_head

//801B10A4
HSD_TObj* _HSD_TObjGetCurrentByType(HSD_TObj* from, u32 mapping)
{
	HSD_TObj* tp;

	if (from == NULL) {
		tp = lbl_8065B8F4;
	} else {
		tp = from->next;
	}

	for (; tp != NULL; tp = tp->next) {
		if (tobj_coord(tp) == mapping) {
			goto END;
		}
	}

	tp = NULL;
END:
	return tp;
}
