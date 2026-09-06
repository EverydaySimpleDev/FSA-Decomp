#include <class.h>

struct HSD_DObj {
	HSD_Class parent;
	struct HSD_DObj* next;
	void* mobj;
	void* pobj;
	void* aobj;
	u32 flags;
};

//801B7D8C
void HSD_DObjRemoveAll(struct HSD_DObj* dobj)
{
	struct HSD_DObj* next;

	for (; dobj != NULL; dobj = next) {
		next = dobj->next;
		hsdDelete(dobj);
	}
}
