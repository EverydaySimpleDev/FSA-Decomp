#include "Dolphin/gx.h"
#include "Dolphin/GX/GXData.h"

//8018D0C0
void GXClearGPMetric(void) { GX_SET_CP_REG(2, 4); }
