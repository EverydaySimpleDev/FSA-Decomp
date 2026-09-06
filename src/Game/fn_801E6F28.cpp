typedef int s32;
typedef unsigned int u32;
typedef float f32;

extern "C" void fn_80210630(void* this_, s32 flag18, s32 zero1, s32 zero2, s32 extra);

// fn_801E6F28(this) - IPOT's real draw (see
// project_fsa_ipot_actor_progress.md). Gated by the same flag bit 16
// of this->0x230 (skips entirely if set - matching its own update()
// override fn_801E6F80). Otherwise delegates ALL rendering to
// fn_80210630 - the SAME shared draw implementation already
// decompiled for IBBM. Passes fn_80210630(this, bit18-of-0x230, 0, 0,
// extra), where extra is the truncated integer value of this->0x2a8
// when this->0x248==2, else 0 (an animation-frame-index override for
// one particular state).
extern "C" void fn_801E6F28(void* this_) {
    u32 flags = *(u32*)((char*)this_ + 0x230);
    if (flags & 0x8000) {
        return;
    }
    s32 extra = 0;
    if (*(s32*)((char*)this_ + 0x248) == 2) {
        extra = (s32)*(f32*)((char*)this_ + 0x2a8);
    }
    fn_80210630(this_, (flags >> 13) & 1, 0, 0, extra);
}
