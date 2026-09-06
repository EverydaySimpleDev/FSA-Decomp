#include <types.h>

extern u8 state_line_width;
extern u8 state_point_size;
extern int state_cull_mode;

//801AA054
void _HSD_StateInvalidatePrimitive(void)
{
    state_line_width = 0;
    state_cull_mode = -1;
    state_point_size = 0xFF;
}
