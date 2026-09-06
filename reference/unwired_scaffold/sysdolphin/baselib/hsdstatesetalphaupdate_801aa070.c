#include <dolphin/gx/GXPixel.h>

extern u8 state_alpha_update;

//801AA070
void HSD_StateSetAlphaUpdate(int arg0)
{
    arg0 = arg0 ? GX_TRUE : GX_FALSE;
    if ((u32)state_alpha_update != (u32)arg0) {
        GXSetAlphaUpdate(arg0);
        state_alpha_update = arg0;
    }
}
