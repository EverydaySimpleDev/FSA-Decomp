#include <aobj.h>

//801BD020
void HSD_AObjSetRewindFrame(HSD_AObj* aobj, f32 frame)
{
	if (!aobj) {
		return;
	}
	aobj->rewind_frame = frame;
}
