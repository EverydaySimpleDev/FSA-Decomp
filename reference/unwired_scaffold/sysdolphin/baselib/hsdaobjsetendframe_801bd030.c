#include <aobj.h>

//801BD030
void HSD_AObjSetEndFrame(HSD_AObj* aobj, f32 frame)
{
	if (!aobj) {
		return;
	}
	aobj->end_frame = frame;
}
