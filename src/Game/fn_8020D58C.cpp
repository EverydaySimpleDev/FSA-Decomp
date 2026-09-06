typedef int s32;
typedef signed char s8;
typedef unsigned char u8;

extern s8 lbl_8053AC68;
extern u8 lbl_804CB8B0[];
extern "C" void fn_8020D60C(void);
extern "C" void __construct_array(void* buffer, void* entryFn, s32 arg, s32 stackSize, s32 priority);

// fn_8020D58C(void) - one-time lazy-init singleton, NOT SLK2-specific.
// Guarded by byte flag lbl_8053AC68. On first call, invokes
// __construct_array(buffer=lbl_804CB8B0+4, entryFn=fn_8020D60C, arg=0,
// stackSize=0x784, priority=2) - an argument shape matching a Dolphin
// SDK OS thread-creation primitive (buffer, entry point, argument,
// stack size, priority) - then zero-initializes a small header struct
// at lbl_804CB8B0 and sets the guard flag. This looks like a generic
// one-time background-thread bootstrap rather than an SLK2 helper.
extern "C" void* fn_8020D58C(void) {
    if (!lbl_8053AC68) {
        void* buffer = lbl_804CB8B0 + 4;
        __construct_array(buffer, (void*)fn_8020D60C, 0, 0x784, 2);
        lbl_804CB8B0[0] = 0;
        lbl_804CB8B0[1] = 1;
        *(s32*)buffer = 0;
        *(s32*)(lbl_804CB8B0 + 0x788) = 0;
        lbl_8053AC68 = 1;
    }
    return lbl_804CB8B0;
}
