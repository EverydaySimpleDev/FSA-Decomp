#include <jobj.h>

//801C6938
void HSD_JObjResolveRefsAll(HSD_JObj* jobj, HSD_Joint* joint)
{
	while (jobj != NULL && joint != NULL) {
		HSD_JObjResolveRefs(jobj, joint);
		if (!(jobj->flags & JOBJ_INSTANCE)) {
			HSD_JObjResolveRefsAll(jobj->child, joint->child);
		}
		jobj = jobj->next;
		joint = joint->next;
	}
}
