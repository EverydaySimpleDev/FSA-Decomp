#include <dolphin/gx/GXGeometry.h>

extern int state_cull_mode;

//801AA1F4
void HSD_StateSetCullMode(int mode)
{
    if (state_cull_mode != mode) {
        GXSetCullMode(mode);
        state_cull_mode = mode;
    }
}
