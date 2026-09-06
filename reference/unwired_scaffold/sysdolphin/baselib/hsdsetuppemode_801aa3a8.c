#include <baselib/state.h>
#include <baselib/mobj.h>
#include <dolphin/gx/GXPixel.h>
#include <dolphin/gx/GXTev.h>

extern u8 state_color_update;
extern u8 state_alpha_update;
extern u8 state_enable_dst_alpha;
extern u8 state_dst_alpha;
extern int state_blend_type;
extern int state_src_factor;
extern int state_dst_factor;
extern int state_logic_op;
extern u8 state_z_enable;
extern int state_z_func;
extern u8 state_z_update;
extern u8 state_before_tex;
extern int state_alpha_comp0;
extern u8 state_alpha_ref0;
extern int state_alpha_op;
extern int state_alpha_comp1;
extern u8 state_alpha_ref1;
extern u8 state_dither;

//801AA3A8
void HSD_SetupPEMode(u32 flags, HSD_PEDesc* pe)
{
    int v;

    if (pe != NULL) {
        u8 dstAlpha;
        u8 type, logicOp, dstFactor, srcFactor;
        int zenable, zcomp, zupdate;
        u8 comp0, ref0, aop, comp1, ref1;

        v = pe->flags & 1;
        if ((u32)state_color_update != (u32)v) {
            GXSetColorUpdate(v);
            state_color_update = v;
        }

        v = (pe->flags & 2) ? GX_TRUE : GX_FALSE;
        if ((u32)state_alpha_update != (u32)v) {
            GXSetAlphaUpdate(v);
            state_alpha_update = v;
        }

        v = (pe->flags & 4) ? GX_TRUE : GX_FALSE;
        dstAlpha = pe->dst_alpha;
        if ((u32)state_enable_dst_alpha != (u32)v || (u32)state_dst_alpha != (u32)dstAlpha) {
            GXSetDstAlpha(v, dstAlpha);
            state_enable_dst_alpha = v;
            state_dst_alpha = dstAlpha;
        }

        type = pe->type;
        logicOp = pe->logic_op;
        dstFactor = pe->dst_factor;
        srcFactor = pe->src_factor;
        if (state_blend_type != type || state_src_factor != srcFactor ||
            state_dst_factor != dstFactor || state_logic_op != logicOp)
        {
            GXSetBlendMode(type, srcFactor, dstFactor, logicOp);
            state_blend_type = type;
            state_src_factor = srcFactor;
            state_dst_factor = dstFactor;
            state_logic_op = logicOp;
        }

        zenable = (pe->flags & 0x10) ? GX_TRUE : GX_FALSE;
        zcomp = pe->z_comp;
        zupdate = (pe->flags & 0x20) ? GX_TRUE : GX_FALSE;
        if ((u32)state_z_enable != (u32)zenable || state_z_func != zcomp ||
            (u32)state_z_update != (u32)zupdate)
        {
            GXSetZMode(zenable, zcomp, zupdate);
            state_z_enable = zenable;
            state_z_func = zcomp;
            state_z_update = zupdate;
        }

        v = (pe->flags & 8) ? GX_TRUE : GX_FALSE;
        if ((u32)state_before_tex != (u32)v) {
            GXSetZCompLoc(v);
            state_before_tex = v;
        }

        comp0 = pe->alpha_comp0;
        ref0 = pe->ref0;
        aop = pe->alpha_op;
        comp1 = pe->alpha_comp1;
        ref1 = pe->ref1;
        if (state_alpha_comp0 != comp0 || (u32)state_alpha_ref0 != (u32)ref0 ||
            state_alpha_op != aop || state_alpha_comp1 != comp1 ||
            (u32)state_alpha_ref1 != (u32)ref1)
        {
            GXSetAlphaCompare(comp0, ref0, aop, comp1, ref1);
            state_alpha_comp0 = comp0;
            state_alpha_ref0 = ref0;
            state_alpha_op = aop;
            state_alpha_comp1 = comp1;
            state_alpha_ref1 = ref1;
        }

        v = (pe->flags & 0x40) ? GX_TRUE : GX_FALSE;
        if ((u32)state_dither != (u32)v) {
            GXSetDither(v);
            state_dither = v;
        }
        return;
    }

    if (state_color_update != 1) {
        GXSetColorUpdate(1);
        state_color_update = 1;
    }
    if (state_alpha_update != 0) {
        GXSetAlphaUpdate(0);
        state_alpha_update = 0;
    }
    if (state_enable_dst_alpha != 0 || state_dst_alpha != 0) {
        GXSetDstAlpha(0, 0);
        state_enable_dst_alpha = 0;
        state_dst_alpha = 0;
    }

    v = (flags & 0x40000000) ? 1 : 0;
    if (state_blend_type != v || state_src_factor != 4 || state_dst_factor != 5 ||
        state_logic_op != 0xF)
    {
        GXSetBlendMode(v, 4, 5, 0xF);
        state_blend_type = v;
        state_src_factor = 4;
        state_dst_factor = 5;
        state_logic_op = 0xF;
    }

    {
        int zfunc = (flags & 0x08000000) ? 7 : 3;
        int notFar = !(flags & 0x20000000);

        if (notFar && (flags & 0x40000000)) {
            if (state_z_enable != 1 || state_z_func != zfunc || state_z_update != 0) {
                GXSetZMode(1, zfunc, GX_FALSE);
                state_z_enable = 1;
                state_z_func = zfunc;
                state_z_update = 0;
            }
            if (state_before_tex != 0) {
                GXSetZCompLoc(0);
                state_before_tex = 0;
            }
            if (state_alpha_comp0 != 4 || state_alpha_ref0 != 0 || state_alpha_op != 0 ||
                state_alpha_comp1 != 4 || state_alpha_ref1 != 0)
            {
                GXSetAlphaCompare(4, 0, 0, 4, 0);
                state_alpha_comp0 = 4;
                state_alpha_ref0 = 0;
                state_alpha_op = 0;
                state_alpha_comp1 = 4;
                state_alpha_ref1 = 0;
            }
        } else {
            if (state_z_enable != 1 || state_z_func != zfunc || state_z_update != 1) {
                GXSetZMode(1, zfunc, GX_TRUE);
                state_z_enable = 1;
                state_z_func = zfunc;
                state_z_update = 1;
            }
            if (state_before_tex != 1) {
                GXSetZCompLoc(1);
                state_before_tex = 1;
            }
            if (state_alpha_comp0 != 7 || state_alpha_ref0 != 0 || state_alpha_op != 0 ||
                state_alpha_comp1 != 7 || state_alpha_ref1 != 0)
            {
                GXSetAlphaCompare(7, 0, 0, 7, 0);
                state_alpha_comp0 = 7;
                state_alpha_ref0 = 0;
                state_alpha_op = 0;
                state_alpha_comp1 = 7;
                state_alpha_ref1 = 0;
            }
        }
    }

    if (state_dither != 0) {
        GXSetDither(0);
        state_dither = 0;
    }
}
