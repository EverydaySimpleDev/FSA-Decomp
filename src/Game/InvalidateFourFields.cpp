#include "types.h"

// InvalidateFourFields - trailing tiny helper (0x18), closes out the whole actor cluster
extern "C" {

void InvalidateFourFields(void* thisPtr) {
	s32* p = (s32*)thisPtr;
	p[0] = -1;
	p[1] = -1;
	p[2] = -1;
	p[3] = -1;
}

}
