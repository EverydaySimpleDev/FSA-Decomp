#include "types.h"

// __stdio_atexit - registers __close_all as the stdio exit handler.
extern "C" {

extern void __close_all(void);
extern void (*__stdio_exit)(void);

void __stdio_atexit(void) {
	__stdio_exit = __close_all;
}

}
