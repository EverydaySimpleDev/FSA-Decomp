#include "types.h"

extern "C" void fn_80456120(void* handle);

// vtable slot 2 (byte offset 8) - see [[reference_fsa_virtual_dispatch_codegen_trick]]
// for why this is a real `virtual` member rather than a manual cast dispatch.
struct ActorSlot2 {
    virtual void destroy(s32 freeFlag);
};

// fn_801F857C(actorPoolBase) - "DESTROY ALL ACTIVE ACTORS", the 3rd sibling
// in the actor-pool API alongside fn_801F8658 (draw-all) and fn_801F871C
// (update-all). Walks the 1024-slot pool; per occupied slot, calls
// fn_80456120(this->0x100c[slot-parallel-array]) (unexplored - shape
// matches an OS lock/mutex acquire given the paired release-style call at
// the very end), destructs via actor->vtable[2](freeFlag=1), clears the
// slot to 0, then maintains a "high-water mark" cache at this->0x1008 -
// if the slot just freed WAS the current high-water index, scans backward
// for the new highest occupied slot. After the full sweep, calls
// fn_80456120(this->0x200c) once more (a 2nd, different lock/counter).
extern "C" void fn_801F857C(void* actorPoolBase) {
    u8* slot = (u8*)actorPoolBase;

    for (u32 i = 0; i < 0x400; i++) {
        if (*(void**)(slot + 8) != 0) {
            fn_80456120(*(void**)(slot + 0x100c));

            ActorSlot2* actor = (ActorSlot2*)*(void**)(slot + 8);
            if (actor != 0) {
                actor->destroy(1);
            }

            *(void**)(slot + 8) = 0;

            s32 highWater = *(s32*)((u8*)actorPoolBase + 0x1008);
            if ((s32)(i + 1) == highWater) {
                s32 j = highWater - 2;
                u8* scan = (u8*)actorPoolBase + j * 4;
                while (j >= 0) {
                    if (*(void**)(scan + 8) != 0) break;
                    scan = scan - 4;
                    j = j - 1;
                }
                *(s32*)((u8*)actorPoolBase + 0x1008) = j + 1;
            }
        }
        slot += 4;
    }

    fn_80456120(*(void**)((u8*)actorPoolBase + 0x200c));
}
