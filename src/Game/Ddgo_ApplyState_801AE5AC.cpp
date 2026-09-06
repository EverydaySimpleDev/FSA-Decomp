typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

// DDGO cluster, part 8/8. Private helper shared by update() state
// handler #2 and setParams. Gated by ->0x238 (a busy/sub-state timer):
// while it's nonzero this is a no-op. Otherwise it dispatches on the
// ->0x290 state field and computes a movement/animation accumulator
// (->0x258) from a per-state speed formula, advancing a step counter
// (->0x24c) and eventually flagging completion via ->0x298. Uses
// fn_801F0E34 (settings-gated event) to fire audio/visual cues at
// specific step counts.
extern "C" void fn_801F0E34(void* this_, int code, int arg2);

struct Ddgo {
    u8 pad0[0x98];
    s32 speed;       // 0x98
    u8 pad1[0x238 - 0x9c];
    s32 subState;    // 0x238
    u8 pad2[0x24c - 0x23c];
    s32 counter;     // 0x24c
    u8 pad3[0x258 - 0x250];
    s32 accum;       // 0x258
    u8 pad4[0x28c - 0x25c];
    s32 base;        // 0x28c
    s32 state;       // 0x290
    u8 pad5[0x298 - 0x294];
    u8 flag;         // 0x298
};

extern "C" void Ddgo_ApplyState(void* this_) {
    Ddgo* t = (Ddgo*)this_;

    if (t->subState != 0) {
        return;
    }

    switch (t->state) {
    case 0:
        t->subState = 6;
        t->accum = t->base;
        t->accum = t->counter + t->speed * 3 + t->accum;
        t->counter = t->counter + 1;
        if (t->counter > 2) {
            t->counter = 0;
            fn_801F0E34(this_, 0x50029, 0);
        }
        break;

    case 1:
        t->subState = 9;
        t->accum = t->base;
        t->accum = t->counter + t->speed * 3 + t->accum;
        if (t->counter == 0) {
            fn_801F0E34(this_, 0x5002a, 0);
        }
        t->counter = t->counter + 1;
        if (t->counter > 2) {
            t->counter = 2;
            t->flag = 1;
        }
        break;

    case 2:
        t->subState = 9;
        t->accum = t->base;
        t->accum = t->counter + t->speed * 2 + t->accum;
        t->counter = t->counter + 1;
        if (t->counter > 1) {
            t->counter = 1;
            t->flag = 1;
        }
        break;

    case 3:
        t->accum = t->base;
        t->accum = t->accum + t->speed;
        break;

    case 4:
        if (t->counter > 2) {
            t->counter = 3;
            t->flag = 1;
            break;
        }
        t->accum = t->base;
        t->accum = t->accum + t->counter;
        t->subState = 0xa;
        t->counter = t->counter + 1;
        break;

    default:
        break;
    }
}
