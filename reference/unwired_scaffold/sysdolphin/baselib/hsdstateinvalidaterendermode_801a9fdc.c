#include <types.h>

extern int state_blend_type;
extern int state_src_factor;
extern int state_dst_factor;
extern int state_logic_op;
extern u8 state_z_enable;
extern int state_z_func;
extern u8 state_z_update;
extern int state_alpha_comp0;
extern u8 state_alpha_ref0;
extern int state_alpha_op;
extern int state_alpha_comp1;
extern u8 state_alpha_ref1;
extern u8 state_color_update;
extern u8 state_alpha_update;
extern u8 state_enable_dst_alpha;
extern u8 state_dst_alpha;
extern u8 state_before_tex;
extern u8 state_dither;

//801A9FDC
void _HSD_StateInvalidateRenderMode(void)
{
    state_blend_type = -1;
    state_src_factor = -1;
    state_dst_factor = -1;
    state_logic_op = -1;
    state_z_enable = -1;
    state_z_func = -1;
    state_z_update = -1;
    state_alpha_comp0 = -1;
    state_alpha_ref0 = 0;
    state_alpha_op = -1;
    state_alpha_comp1 = -1;
    state_alpha_ref1 = 0;
    state_color_update = -1;
    state_alpha_update = -1;
    state_enable_dst_alpha = -1;
    state_dst_alpha = 0;
    state_before_tex = -1;
    state_dither = -1;
}
