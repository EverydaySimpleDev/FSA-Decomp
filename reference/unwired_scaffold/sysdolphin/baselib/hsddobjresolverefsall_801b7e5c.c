#include <class.h>

typedef struct HSD_PObj HSD_PObj;
typedef struct HSD_PObjDesc HSD_PObjDesc;

struct HSD_DObj {
	HSD_Class parent;
	struct HSD_DObj* next;
	void* mobj;
	HSD_PObj* pobj;
	void* aobj;
	u32 flags;
};

struct HSD_DObjDesc {
	char* class_name;
	struct HSD_DObjDesc* next;
	void* mobjdesc;
	HSD_PObjDesc* pobjdesc;
};

extern void HSD_PObjResolveRefsAll(HSD_PObj* pobj, HSD_PObjDesc* pdesc);

//801B7E5C
void HSD_DObjResolveRefsAll(struct HSD_DObj* dobj, struct HSD_DObjDesc* desc)
{
	for (; dobj != NULL && desc != NULL; dobj = dobj->next, desc = desc->next) {
		if (dobj != NULL && desc != NULL) {
			HSD_PObjResolveRefsAll(dobj->pobj, desc->pobjdesc);
		}
	}
}
