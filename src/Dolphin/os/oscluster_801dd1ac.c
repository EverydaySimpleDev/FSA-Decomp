#include "types.h"

// fn_801DD1AC(this) -> bool - a generic "bounding-box wall bounce" utility,
// unrelated to the previous class (fresh fields this->0x264/0x2d0-0x2ec).
// No-op (returns false) if bit 19 of this->0x230 is set.
//
// Clamps this->0xc (an X/horizontal position) against [this->0x2d4 min,
// this->0x2ec max]; if clamped, writes a wall-hit NORMAL vector into
// this->0x264/0x268/0x26c (one axis +/-1, others 0, using 2 constants
// lbl_8053F388/lbl_8053F390 - presumably +1.0/-1.0 - and a 3rd, lbl_
// 8053F38C, presumably 0.0) and returns true.
//
// If the X-axis wasn't clamped, and this->0x248 (this object's own FSM
// state) is in [0xb,0x10]: also clamps this->0x10 (a 2nd axis) against
// [this->0x2d0 min, this->0x2d8 max], writing the corresponding normal and
// returning true if clamped.
//
// Returns false if nothing was clamped.



ASM void fn_801DD1AC(void);

ASM void fn_801DD1AC(void)
{
    nofralloc
    lwz r0, 0x230(r3)
    li r4, 0x0
    rlwinm. r0, r0, 0, 19, 19
    opword  0x408200CC  // bne .L_801DD284
    lfs fp1, 0xc(r3)
    lfs fp0, 0x2d4(r3)
    fcmpo cr0, fp1, fp0
    opword  0x40800024  // bge .L_801DD1EC
    stfs fp0, 0xc(r3)
    li r4, 0x1
    opword  0xC022C3E8  // lfs f1, lbl_8053F388@sda21(r0)
    opword  0xC002C3EC  // lfs f0, lbl_8053F38C@sda21(r0)
    stfs fp1, 0x264(r3)
    stfs fp0, 0x268(r3)
    stfs fp0, 0x26c(r3)
    opword  0x4800002C  // b .L_801DD214
L_801DD1EC:
    lfs fp0, 0x2ec(r3)
    fcmpo cr0, fp0, fp1
    opword  0x40800020  // bge .L_801DD214
    stfs fp0, 0xc(r3)
    li r4, 0x1
    opword  0xC022C3F0  // lfs f1, lbl_8053F390@sda21(r0)
    opword  0xC002C3EC  // lfs f0, lbl_8053F38C@sda21(r0)
    stfs fp1, 0x264(r3)
    stfs fp0, 0x268(r3)
    stfs fp0, 0x26c(r3)
L_801DD214:
    lfs fp1, 0x10(r3)
    lfs fp0, 0x2d0(r3)
    fcmpo cr0, fp1, fp0
    opword  0x40810024  // ble .L_801DD244
    stfs fp0, 0x10(r3)
    li r4, 0x1
    opword  0xC022C3EC  // lfs f1, lbl_8053F38C@sda21(r0)
    opword  0xC002C3F0  // lfs f0, lbl_8053F390@sda21(r0)
    stfs fp1, 0x264(r3)
    stfs fp0, 0x268(r3)
    stfs fp1, 0x26c(r3)
    opword  0x48000044  // b .L_801DD284
L_801DD244:
    lwz r0, 0x248(r3)
    cmpwi r0, 0x11
    opword  0x40800038  // bge .L_801DD284
    cmpwi r0, 0xb
    opword  0x40800008  // bge .L_801DD25C
    opword  0x4800002C  // b .L_801DD284
L_801DD25C:
    lfs fp0, 0x2d8(r3)
    fcmpo cr0, fp1, fp0
    opword  0x40800020  // bge .L_801DD284
    stfs fp0, 0x10(r3)
    li r4, 0x1
    opword  0xC022C3EC  // lfs f1, lbl_8053F38C@sda21(r0)
    opword  0xC002C3E8  // lfs f0, lbl_8053F388@sda21(r0)
    stfs fp1, 0x264(r3)
    stfs fp0, 0x268(r3)
    stfs fp1, 0x26c(r3)
L_801DD284:
    mr r3, r4
    blr
}

