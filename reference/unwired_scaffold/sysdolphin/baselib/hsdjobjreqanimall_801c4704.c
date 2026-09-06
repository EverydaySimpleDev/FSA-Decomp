#include <jobj.h>

//801C4704
void HSD_JObjReqAnimAll(HSD_JObj* jobj, f32 frame)
{
	HSD_JObjReqAnimAllByFlags(jobj, 0x7FF, frame);
}
