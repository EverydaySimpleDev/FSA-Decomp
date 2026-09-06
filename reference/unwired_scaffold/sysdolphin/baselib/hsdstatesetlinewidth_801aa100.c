#include <dolphin/gx/GXGeometry.h>

extern u8 state_line_width;
extern int state_line_tex_offsets;

//801AA100
void HSD_StateSetLineWidth(u8 arg0, int arg1)
{
    if ((u32)state_line_width != (u32)arg0 || state_line_tex_offsets != arg1) {
        GXSetLineWidth(arg0, arg1);
        state_line_width = arg0;
        state_line_tex_offsets = arg1;
    }
}
