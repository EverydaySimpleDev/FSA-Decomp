#include <lobj.h>

extern char lbl_8065AE70[8];   // "lobj.c"
extern char lbl_8065AE78[4];   // "0"

//801BE828
s32 HSD_LightID2Index(GXLightID id)
{
	s32 index;
	switch (id) {
	case GX_LIGHT0:
		index = 0;
		break;
	case GX_LIGHT1:
		index = 1;
		break;
	case GX_LIGHT2:
		index = 2;
		break;
	case GX_LIGHT3:
		index = 3;
		break;
	case GX_LIGHT4:
		index = 4;
		break;
	case GX_LIGHT5:
		index = 5;
		break;
	case GX_LIGHT6:
		index = 6;
		break;
	case GX_LIGHT7:
		index = 7;
		break;
	case 0x100:
		index = 8;
		break;
	default:
		__assert(lbl_8065AE70, 0x4a8, lbl_8065AE78);
	}
	return index;
}
