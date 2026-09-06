#include "types.h"

extern f64 __ieee754_sqrt();

//8015CF24
f64 sqrt(f64 __x) { return (f64)__ieee754_sqrt(); }
