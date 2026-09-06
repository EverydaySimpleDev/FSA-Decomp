#include "types.h"

// Unnamed actor cluster, part 9/9. Mgr_SetSpawnParam(spawnParam): installs a
// spawn parameter into this->0x54, marks this->0x85 active, and zeroes
// this->0x74/0x78 - a setParams-style initializer using the confirmed
// global manager pointer lbl_8053AAF8.
extern void* lbl_8053AAF8[2];

extern "C" {

void Mgr_SetSpawnParam(u32 spawnParam) {
	void* mgr = lbl_8053AAF8[0];
	*(u8*)((char*)mgr + 0x85) = 1;
	*(u32*)((char*)mgr + 0x74) = 0;
	*(u32*)((char*)mgr + 0x78) = 0;
	*(u32*)((char*)mgr + 0x54) = spawnParam;
}

}
