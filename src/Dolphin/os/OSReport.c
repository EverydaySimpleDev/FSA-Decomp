#include "types.h"
#include "stl/stdarg.h"

int vprintf(const char* fmt, va_list ap);

// OSReport(msg, ...) - the standard Dolphin SDK debug-print entry point.
// NOTE: this function only byte-matches retail when compiled with the
// OLDER GC/1.2.5 compiler (see its Object() entry's mw_version override)
// - GC/1.3.2 (this project's default) produces an extra 8 bytes of stack
// frame and a stwu-before-mflr prologue order for this specific va_start/
// varargs codegen path, root-caused via a direct compiler-version A/B
// test against zeldaret/pikmin's own confirmed-Matching OSError.c (same
// exact source, same exact stdarg.h va_start macro, different compiler
// version pinned in their configure.py). This strongly suggests FSA's
// real Dolphin OS library objects were compiled with a different
// (older) Metrowerks version than the game's own code - confirmed
// working for this function; other varargs-adjacent functions in this
// same family (OSRegisterVersion, OSInitAlarm) are good candidates to
// retest with the same override.
void OSReport(const char* msg, ...) {
	va_list marker;
	va_start(marker, msg);
	vprintf(msg, marker);
	va_end(marker);
}
