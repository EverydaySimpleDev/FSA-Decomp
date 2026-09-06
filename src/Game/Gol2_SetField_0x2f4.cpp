#include "types.h"

// GOL2 (vtable lbl_804A9C20, ctor fn_80201898) cluster, part 1/5 (8B,
// no extab - leaf). Trivial single-byte setter (this->0x2f4).
extern "C" {

void Gol2_SetField_0x2f4(void* thisPtr, u8 val) { *(u8*)((char*)thisPtr + 0x2f4) = val; }

}
