#include <dolphin/gx/GXPixel.h>

extern u8 state_color_update;

//801AA0B8
void HSD_StateSetColorUpdate(int arg0)
{
    arg0 = arg0 ? GX_TRUE : GX_FALSE;
    if ((u32)state_color_update != (u32)arg0) {
        GXSetColorUpdate(arg0);
        state_color_update = arg0;
    }
}
