#include <lobj.h>

//801BE990
void HSD_LObjGetColor(HSD_LObj* lobj, GXColor* color)
{
	*color = lobj->color;
}
