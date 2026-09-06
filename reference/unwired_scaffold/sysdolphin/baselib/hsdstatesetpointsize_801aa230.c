#include <dolphin/gx/GXGeometry.h>

extern u8 state_point_size;
extern int HSD_State_804D75BC;

//801AA230
void HSD_StateSetPointSize(u8 arg0, int arg1)
{
    if ((u32)state_point_size != (u32)arg0 || HSD_State_804D75BC != arg1) {
        GXSetPointSize(arg0, arg1);
        state_point_size = arg0;
        HSD_State_804D75BC = arg1;
    }
}
