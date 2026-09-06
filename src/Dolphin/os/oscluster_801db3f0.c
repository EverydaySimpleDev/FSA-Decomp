#include "types.h"

/* fn_801DB3F0(this) - a velocity-select function using a NEW field layout
 * (this->0x2b4/0x2b8 = a 2D "drift" value ramping toward zero via
 * `lbl_8053F2E8`/`lbl_8053F2EC` depending on this->0x248's state, snapping
 * to 0 once below a small `lbl_8053F2F0` threshold) - structurally the same
 * "ramp then dispatch on state" role as fn_801D882C/fn_801D4C70 for the
 * other classes landed this session, but for a not-yet-identified class.
 * For state==0: sets velocity (this->0x3c/0x40/0x44) directly from the
 * drift value. Otherwise: computes an ORBIT velocity around self position
 * (this->0xc/0x10) using an anchor point (this->0x2bc/0x2c0) plus a radius
 * (this->0x2d4) times a facing-angle lookup into the CONFIRMED shared
 * anchor table `lbl_8052EBC0` (this->0x2dc angle) - the same orbiting-
 * motion idiom confirmed for fn_801D6D38/fn_801D70BC this session.
 */

extern f32 lbl_8052EBC0;


ASM void fn_801DB3F0(void);

ASM void fn_801DB3F0(void)
{
    nofralloc
    opword  0xC002C344  // lfs f0, lbl_8053F2E4@sda21(r0)
    lfs fp1, 0x2b4(r3)
    fcmpu cr0, fp0, fp1
    opword  0x41820048  // beq .L_801DB444
    lwz r0, 0x248(r3)
    cmpwi r0, 0x0
    opword  0x40820014  // bne .L_801DB41C
    opword  0xC002C348  // lfs f0, lbl_8053F2E8@sda21(r0)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x2b4(r3)
    opword  0x48000010  // b .L_801DB428
L_801DB41C:
    opword  0xC002C34C  // lfs f0, lbl_8053F2EC@sda21(r0)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x2b4(r3)
L_801DB428:
    lfs fp1, 0x2b4(r3)
    opword  0xC002C350  // lfs f0, lbl_8053F2F0@sda21(r0)
    fabs fp1, fp1
    fcmpo cr0, fp1, fp0
    opword  0x4080000C  // bge .L_801DB444
    opword  0xC002C344  // lfs f0, lbl_8053F2E4@sda21(r0)
    stfs fp0, 0x2b4(r3)
L_801DB444:
    opword  0xC002C344  // lfs f0, lbl_8053F2E4@sda21(r0)
    lfs fp1, 0x2b8(r3)
    fcmpu cr0, fp0, fp1
    opword  0x41820048  // beq .L_801DB498
    lwz r0, 0x248(r3)
    cmpwi r0, 0x0
    opword  0x40820014  // bne .L_801DB470
    opword  0xC002C348  // lfs f0, lbl_8053F2E8@sda21(r0)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x2b8(r3)
    opword  0x48000010  // b .L_801DB47C
L_801DB470:
    opword  0xC002C34C  // lfs f0, lbl_8053F2EC@sda21(r0)
    fmuls fp0, fp1, fp0
    stfs fp0, 0x2b8(r3)
L_801DB47C:
    lfs fp1, 0x2b8(r3)
    opword  0xC002C350  // lfs f0, lbl_8053F2F0@sda21(r0)
    fabs fp1, fp1
    fcmpo cr0, fp1, fp0
    opword  0x4080000C  // bge .L_801DB498
    opword  0xC002C344  // lfs f0, lbl_8053F2E4@sda21(r0)
    stfs fp0, 0x2b8(r3)
L_801DB498:
    lwz r0, 0x248(r3)
    cmpwi r0, 0x0
    opword  0x40820020  // bne .L_801DB4C0
    lfs fp2, 0x2b8(r3)
    lfs fp1, 0x2b4(r3)
    opword  0xC002C344  // lfs f0, lbl_8053F2E4@sda21(r0)
    stfs fp1, 0x3c(r3)
    stfs fp2, 0x40(r3)
    stfs fp0, 0x44(r3)
    blr
L_801DB4C0:
    lha r0, 0x2dc(r3)
    lis r4, lbl_8052EBC0@ha
    addi r4, r4, lbl_8052EBC0@l
    lfs fp1, 0x2d4(r3)
    rlwinm r0, r0, 30, 18, 28
    lfs fp0, 0x2bc(r3)
    lfsx fp5, r4, r0
    add r4, r4, r0
    lfs fp2, 0x4(r4)
    fmuls fp5, fp5, fp1
    lfs fp4, 0x2c0(r3)
    fmuls fp6, fp2, fp1
    lfs fp1, 0xc(r3)
    lfs fp3, 0x10(r3)
    fadds fp2, fp0, fp5
    fadds fp4, fp4, fp6
    opword  0xC002C344  // lfs f0, lbl_8053F2E4@sda21(r0)
    fsubs fp1, fp2, fp1
    fsubs fp2, fp4, fp3
    stfs fp1, 0x3c(r3)
    stfs fp2, 0x40(r3)
    stfs fp0, 0x44(r3)
    blr
}

