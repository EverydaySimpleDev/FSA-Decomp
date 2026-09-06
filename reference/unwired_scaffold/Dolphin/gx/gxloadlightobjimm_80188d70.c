#include "Dolphin/gx.h"

static inline void PushLight(const register GXLightObjPriv* lt_obj, register void* dest)
{
    register u32 zero, color;
    register f32 a0_a1, a2_k0, k1_k2;
    register f32 px_py, pz_dx, dy_dz;
    asm
    {
        lwz     color, 12(lt_obj)
        xor     zero, zero, zero
        psq_l   a0_a1, 16(lt_obj), 0, 0
        psq_l   a2_k0, 24(lt_obj), 0, 0
        psq_l   k1_k2, 32(lt_obj), 0, 0
        psq_l   px_py, 40(lt_obj), 0, 0
        psq_l   pz_dx, 48(lt_obj), 0, 0
        psq_l   dy_dz, 56(lt_obj), 0, 0

        stw     zero,  0(dest)
        stw     zero,  0(dest)
        stw     zero,  0(dest)
        stw     color, 0(dest)
        psq_st  a0_a1, 0(dest), 0, 0
        psq_st  a2_k0, 0(dest), 0, 0
        psq_st  k1_k2, 0(dest), 0, 0
        psq_st  px_py, 0(dest), 0, 0
        psq_st  pz_dx, 0(dest), 0, 0
        psq_st  dy_dz, 0(dest), 0, 0
    }
}

//80188D70
void GXLoadLightObjImm(GXLightObj* obj, GXLightID light)
{
    u32 addr;
    u32 idx;
    GXLightObjPriv* pObj = (GXLightObjPriv*)obj;

    idx = 31 - __cntlzw(light);
    idx &= 7;

    addr = 0x600 + idx * 0x10;

    GX_XF_LOAD_REG_HDR(addr | (0x10 - 1) << 16);

    PushLight(pObj, (void*)GXFIFO_ADDR);
    __GXData->bpSentNot = 1;
}
