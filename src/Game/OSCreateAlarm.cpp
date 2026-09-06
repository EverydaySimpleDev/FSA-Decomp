#include "types.h"

// OSCreateAlarm - zero-inits the 2 leading fields of an OSAlarm struct.
extern "C" void OSCreateAlarm(void* alarm) {
	*(u32*)((char*)alarm + 0x0) = 0;
	*(u32*)((char*)alarm + 0x4) = 0;
}
