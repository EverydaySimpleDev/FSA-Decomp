#include <dolphin/gx/GXPixel.h>

extern u8 state_z_enable;
extern int state_z_func;
extern u8 state_z_update;

//801AA164
void HSD_StateSetZMode(int arg0, int arg1, int arg2)
{
    arg2 = arg2 ? GX_TRUE : GX_FALSE;
    arg0 = arg0 ? GX_TRUE : GX_FALSE;

    if ((u32)state_z_enable != (u32)arg0 || state_z_func != arg1 ||
        (u32)state_z_update != (u32)arg2)
    {
        GXSetZMode(arg0, arg1, arg2);
        state_z_enable = arg0;
        state_z_func = arg1;
        state_z_update = arg2;
    }
}
