// Real Dolphin SDK paired-single matrix/vector library (PSMTX*/PSVEC* family).
// Every function below is verified against real objdump disassembly of FSA's
// retail DOL (see reference_fsa_ground_truth_disasm_technique in project
// memory for the method) - instruction sequences, register numbers, and
// constant values are all confirmed against the actual retail bytes, not
// guessed from a sibling project alone. Naming/documentation cross-checked
// against two independent real decomp projects that ship the exact same
// Dolphin SDK library code: cbr_decomp (Chibi-Robo) and, most usefully,
// FF Crystal Chronicles' reference-decomp (which has this exact file laid
// out nearly identically, including the plain-C C_MTXLightOrtho/C_VECReflect
// forms used below).
#include "types.h"
#include "Dolphin/mtx.h"
#include "Dolphin/vec.h"

extern f32 sinf(f32);
extern f32 cosf(f32);

extern f32 lbl_80539C28; // paired-single {0.0f, 1.0f} constant pair used by PSMTXConcat
extern f32 lbl_8053B2F0; // 1.0f
extern f32 lbl_8053B2F4; // 0.0f
extern f32 lbl_8053B308; // 2.0f
extern f32 lbl_8053B318; // 0.5f
extern f32 lbl_8053B31C; // 3.0f

/**
 * Sets m to the 3x4 identity matrix.
 *
 * Logically just stores 0.0f/1.0f into the right cells (matching FF
 * Crystal Chronicles' reference-decomp `PSMTXIdentity` exactly, and this
 * IS a genuine, understood function) - kept as a raw nofralloc
 * transcription rather than that natural C form because MWCC's scheduler
 * reorders two independent instructions (a store and an unrelated
 * ps_merge) differently than retail did for this exact pair, for reasons
 * not pinned down. Real logic, just deferred to raw form for an exact
 * byte match.
 */
ASM void PSMTXIdentity(register Mtx m)
{
    nofralloc
    lfs fp0, -31916(r2) // zero_c = 0.0f
    lfs fp1, -31920(r2) // one_c = 1.0f
    psq_st fp0, 8(m), 0, 0
    ps_merge01 fp2, fp0, fp1 // c_01
    psq_st fp0, 24(m), 0, 0
    ps_merge10 fp1, fp1, fp0 // c_10
    psq_st fp0, 32(m), 0, 0
    psq_st fp2, 16(m), 0, 0
    psq_st fp1, 0(m), 0, 0
    psq_st fp1, 40(m), 0, 0
    blr
}

/**
 * Copies a 3x4 matrix from src to dst.
 */
ASM void PSMTXCopy(register const Mtx src, register Mtx dst)
{
    nofralloc
    psq_l fp0, 0(src), 0, 0
    psq_st fp0, 0(dst), 0, 0
    psq_l fp1, 8(src), 0, 0
    psq_st fp1, 8(dst), 0, 0
    psq_l fp2, 16(src), 0, 0
    psq_st fp2, 16(dst), 0, 0
    psq_l fp3, 24(src), 0, 0
    psq_st fp3, 24(dst), 0, 0
    psq_l fp4, 32(src), 0, 0
    psq_st fp4, 32(dst), 0, 0
    psq_l fp5, 40(src), 0, 0
    psq_st fp5, 40(dst), 0, 0
    blr
}

/**
 * Concatenates two 3x4 matrices: mAB = mA * mB.
 */
ASM void PSMTXConcat(register const Mtx mA, register const Mtx mB, register Mtx mAB)
{
    nofralloc
    stwu r1, -64(r1)
    psq_l fp0, 0(mA), 0, 0
    stfd fp14, 8(r1)
    psq_l fp6, 0(mB), 0, 0
    addis r6, 0, lbl_80539C28@ha
    psq_l fp7, 8(mB), 0, 0
    stfd fp15, 16(r1)
    addi r6, r6, lbl_80539C28@l
    stfd fp31, 40(r1)
    psq_l fp8, 16(mB), 0, 0
    ps_muls0 fp12, fp6, fp0
    psq_l fp2, 16(mA), 0, 0
    ps_muls0 fp13, fp7, fp0
    psq_l fp31, 0(r6), 0, 0
    ps_muls0 fp14, fp6, fp2
    psq_l fp9, 24(mB), 0, 0
    ps_muls0 fp15, fp7, fp2
    psq_l fp1, 8(mA), 0, 0
    ps_madds1 fp12, fp8, fp0, fp12
    psq_l fp3, 24(mA), 0, 0
    ps_madds1 fp14, fp8, fp2, fp14
    psq_l fp10, 32(mB), 0, 0
    ps_madds1 fp13, fp9, fp0, fp13
    psq_l fp11, 40(mB), 0, 0
    ps_madds1 fp15, fp9, fp2, fp15
    psq_l fp4, 32(mA), 0, 0
    psq_l fp5, 40(mA), 0, 0
    ps_madds0 fp12, fp10, fp1, fp12
    ps_madds0 fp13, fp11, fp1, fp13
    ps_madds0 fp14, fp10, fp3, fp14
    ps_madds0 fp15, fp11, fp3, fp15
    psq_st fp12, 0(mAB), 0, 0
    ps_muls0 fp2, fp6, fp4
    ps_madds1 fp13, fp31, fp1, fp13
    ps_muls0 fp0, fp7, fp4
    psq_st fp14, 16(mAB), 0, 0
    ps_madds1 fp15, fp31, fp3, fp15
    psq_st fp13, 8(mAB), 0, 0
    ps_madds1 fp2, fp8, fp4, fp2
    ps_madds1 fp0, fp9, fp4, fp0
    ps_madds0 fp2, fp10, fp5, fp2
    lfd fp14, 8(r1)
    psq_st fp15, 24(mAB), 0, 0
    ps_madds0 fp0, fp11, fp5, fp0
    psq_st fp2, 32(mAB), 0, 0
    ps_madds1 fp0, fp31, fp5, fp0
    lfd fp15, 16(r1)
    psq_st fp0, 40(mAB), 0, 0
    lfd fp31, 40(r1)
    addi r1, r1, 64
    blr
}

/**
 * Inverts a 3x4 matrix. Returns 0 if src is singular (determinant near
 * zero), 1 on success.
 */
ASM u32 PSMTXInverse(register const Mtx src, register Mtx inv)
{
    nofralloc
    psq_l fp0, 0(src), 1, 0
    psq_l fp1, 4(src), 0, 0
    psq_l fp2, 16(src), 1, 0
    ps_merge10 fp6, fp1, fp0
    psq_l fp3, 20(src), 0, 0
    psq_l fp4, 32(src), 1, 0
    ps_merge10 fp7, fp3, fp2
    psq_l fp5, 36(src), 0, 0
    ps_mul fp11, fp3, fp6
    ps_mul fp13, fp5, fp7
    ps_merge10 fp8, fp5, fp4
    ps_msub fp11, fp1, fp7, fp11
    ps_mul fp12, fp1, fp8
    ps_msub fp13, fp3, fp8, fp13
    ps_mul fp10, fp3, fp4
    ps_msub fp12, fp5, fp6, fp12
    ps_mul fp9, fp0, fp5
    ps_mul fp8, fp1, fp2
    ps_sub fp6, fp6, fp6
    ps_msub fp10, fp2, fp5, fp10
    ps_mul fp7, fp0, fp13
    ps_msub fp9, fp1, fp4, fp9
    ps_madd fp7, fp2, fp12, fp7
    ps_msub fp8, fp0, fp3, fp8
    ps_madd fp7, fp4, fp11, fp7
    ps_cmpo0 cr0, fp7, fp6
    opword 0x4082000C // bne _regular
    addi r3, 0, 0
    blr
_regular:
    fres fp0, fp7
    ps_add fp6, fp0, fp0
    ps_mul fp5, fp0, fp0
    ps_nmsub fp0, fp7, fp5, fp6
    lfs fp1, 12(src)
    ps_muls0 fp13, fp13, fp0
    lfs fp2, 28(src)
    ps_muls0 fp12, fp12, fp0
    lfs fp3, 44(src)
    ps_muls0 fp11, fp11, fp0
    ps_merge00 fp5, fp13, fp12
    ps_muls0 fp10, fp10, fp0
    ps_merge11 fp4, fp13, fp12
    ps_muls0 fp9, fp9, fp0
    psq_st fp5, 0(inv), 0, 0
    ps_mul fp6, fp13, fp1
    psq_st fp4, 16(inv), 0, 0
    ps_muls0 fp8, fp8, fp0
    ps_madd fp6, fp12, fp2, fp6
    psq_st fp10, 32(inv), 1, 0
    ps_nmadd fp6, fp11, fp3, fp6
    psq_st fp9, 36(inv), 1, 0
    ps_mul fp7, fp10, fp1
    ps_merge00 fp5, fp11, fp6
    psq_st fp8, 40(inv), 1, 0
    ps_merge11 fp4, fp11, fp6
    psq_st fp5, 8(inv), 0, 0
    ps_madd fp7, fp9, fp2, fp7
    psq_st fp4, 24(inv), 0, 0
    ps_nmadd fp7, fp8, fp3, fp7
    addi r3, 0, 1
    psq_st fp7, 44(inv), 1, 0
    blr
}

/**
 * Builds a rotation matrix for `axis` ('x'/'y'/'z') by `rad` radians.
 *
 * Logically this is just `PSMTXRotTrig(m, axis, sinf(rad), cosf(rad))`
 * (confirmed via ground-truth disasm: it really does call sinf then cosf
 * then PSMTXRotTrig, nothing else) - kept as a raw nofralloc transcription
 * rather than that natural C form because MWCC compiles the natural form
 * with a different (smaller, differently-ordered) stack frame than retail
 * actually used for this exact wrapper shape, for reasons not yet
 * understood (tried explicit `register` hints, a nested-call-expression
 * form, and `-sym on`/`-O4,s` cflag overrides - none reproduced retail's
 * frame). A real, understood, but not-yet-byte-matched decompilation is a
 * normal documented outcome; this one is deferred to raw form so the file
 * as a whole stays byte-exact.
 */
ASM void PSMTXRotRad(register Mtx m, register char axis, register f32 rad)
{
    nofralloc
    mflr r0
    stw r0, 4(r1)
    stwu r1, -40(r1)
    stfd fp31, 32(r1)
    stw r31, 28(r1)
    stw r30, 24(r1)
    fmr fp31, rad
    mr r30, m
    mr r31, axis
    fmr fp1, fp31
    bl sinf
    fmr fp0, fp1
    fmr fp1, fp31
    fmr fp31, fp0
    bl cosf
    fmr fp0, fp1
    mr r3, r30
    fmr fp1, fp31
    mr r4, r31
    fmr fp2, fp0
    bl PSMTXRotTrig
    lwz r0, 44(r1)
    lfd fp31, 32(r1)
    lwz r31, 28(r1)
    lwz r30, 24(r1)
    addi r1, r1, 40
    mtlr r0
    blr
}

/**
 * Builds a rotation matrix for `axis` ('x'/'y'/'z') given precomputed
 * sin/cos of the angle.
 *
 * Same deferred-to-raw-form situation as PSMTXIdentity above: the natural
 * C form is genuinely understood (real per-axis logic, matches FF Crystal
 * Chronicles' reference-decomp exactly) but MWCC's scheduler hoists the
 * axis-comparison instructions across the fc0/fc1 assignment differently
 * than retail did. Real names kept in the signature; body kept as a raw
 * register transcription. Local-label branches use `opword` per this
 * project's established branch-folding workaround (see
 * project_fsa_mwcc_branch_fold_bug in project memory).
 */
ASM void PSMTXRotTrig(register Mtx m, register char axis, register f32 sinA, register f32 cosA)
{
    nofralloc
    frsp fp5, sinA
    frsp fp4, cosA
    lfs fp0, -31916(r2) // fc0 = 0.0f
    lfs fp1, -31920(r2) // fc1 = 1.0f
    ori r0, axis, 0x20
    ps_neg fp2, fp5 // nsinA
    cmplwi r0, 'x'
    opword 0x41820018 // beq _case_x
    cmplwi r0, 'y'
    opword 0x41820038 // beq _case_y
    cmplwi r0, 'z'
    opword 0x4182005C // beq _case_z
    opword 0x4800007C // b _end
_case_x:
    psq_st fp1, 0(m), 1, 0
    psq_st fp0, 4(m), 0, 0
    ps_merge00 fp3, fp5, fp4 // fw0
    psq_st fp0, 12(m), 0, 0
    ps_merge00 fp1, fp4, fp2 // fw1
    psq_st fp0, 28(m), 0, 0
    psq_st fp0, 44(m), 1, 0
    psq_st fp3, 36(m), 0, 0
    psq_st fp1, 20(m), 0, 0
    opword 0x48000054 // b _end
_case_y:
    ps_merge00 fp3, fp4, fp0 // fw0
    ps_merge00 fp1, fp0, fp1 // fw1
    psq_st fp0, 24(m), 0, 0
    psq_st fp3, 0(m), 0, 0
    ps_merge00 fp2, fp2, fp0 // fw2
    ps_merge00 fp0, fp5, fp0 // fw3
    psq_st fp3, 40(m), 0, 0
    psq_st fp1, 16(m), 0, 0
    psq_st fp0, 8(m), 0, 0
    psq_st fp2, 32(m), 0, 0
    opword 0x48000028 // b _end
_case_z:
    psq_st fp0, 8(m), 0, 0
    ps_merge00 fp3, fp5, fp4 // fw0
    ps_merge00 fp2, fp4, fp2 // fw2
    psq_st fp0, 24(m), 0, 0
    psq_st fp0, 32(m), 0, 0
    ps_merge00 fp1, fp1, fp0 // fw1
    psq_st fp3, 16(m), 0, 0
    psq_st fp2, 0(m), 0, 0
    psq_st fp1, 40(m), 0, 0
_end:
    blr
}

/**
 * Builds a rotation matrix around an arbitrary unit `axis` given
 * precomputed sin/cos of the angle. Internal helper for PSMTXRotAxisRad.
 *
 * Same deferred-to-raw-form situation as PSMTXRotRad/PSMTXRotAxisRad: the
 * natural C form (matching FF Crystal Chronicles' reference-decomp
 * verbatim, including its own confirmed real PAL address/size for this
 * exact function) compiles two instructions too long here - MWCC
 * pre-copies the sT/cT parameters into working registers before the
 * `frsp`, where retail's build let `frsp` read the parameter registers
 * directly. Real logic, real names in the signature; body kept as raw
 * register transcription (bare fp/r regs, commented) since nofralloc
 * bodies can't introduce the many new named locals this needs.
 */
ASM void __PSMTXRotAxisRadInternal(register Mtx m, register const Vec* axis, register f32 sT, register f32 cT)
{
    nofralloc
    lfs fp10, -31912(r2) // tmp9 = 0.5f
    lfs fp9, -31908(r2)  // tmp8 = 3.0f
    frsp fp11, cT
    psq_l fp2, 0(axis), 0, 0 // tmp0 = axis[0..1]
    frsp fp12, sT
    lfs fp3, 8(axis) // tmp1 = axis[2]
    ps_mul fp4, fp2, fp2
    fadds fp8, fp10, fp10
    ps_madd fp5, fp3, fp3, fp4
    fsubs fp1, fp10, fp10 // fc0 = 0.0
    ps_sum0 fp6, fp5, fp3, fp4
    fsubs fp0, fp8, fp11 // tT
    frsqrte fp7, fp6
    fmuls fp4, fp7, fp7
    fmuls fp5, fp7, fp10
    fnmsubs fp4, fp4, fp6, fp9
    fmuls fp7, fp4, fp5
    ps_merge00 fp11, fp11, fp11
    ps_muls0 fp2, fp2, fp7
    ps_muls0 fp3, fp3, fp7
    ps_muls0 fp6, fp2, fp0
    ps_muls0 fp10, fp2, fp12
    ps_muls0 fp7, fp3, fp0
    ps_muls1 fp5, fp6, fp2
    ps_muls0 fp4, fp6, fp2
    ps_muls0 fp6, fp6, fp3
    fnmsubs fp0, fp3, fp12, fp5
    fmadds fp8, fp3, fp12, fp5
    ps_neg fp2, fp10
    ps_sum0 fp9, fp6, fp1, fp10
    ps_sum0 fp4, fp4, fp0, fp11
    ps_sum1 fp5, fp11, fp8, fp5
    ps_sum0 fp0, fp2, fp1, fp6
    psq_st fp9, 8(m), 0, 0
    ps_sum0 fp2, fp6, fp6, fp2
    psq_st fp4, 0(m), 0, 0
    ps_muls0 fp7, fp7, fp3
    psq_st fp5, 16(m), 0, 0
    ps_sum1 fp6, fp10, fp2, fp6
    psq_st fp0, 24(m), 0, 0
    ps_sum0 fp7, fp7, fp1, fp11
    psq_st fp6, 32(m), 0, 0
    psq_st fp7, 40(m), 0, 0
    blr
}

/**
 * Builds a rotation matrix around an arbitrary unit `axis` by `rad` radians.
 * Same deferred-to-raw-form situation as PSMTXRotRad above (identical
 * shape: sinf, cosf, then a third call) - see that function's comment.
 */
ASM void PSMTXRotAxisRad(register Mtx m, register const Vec* axis, register f32 rad)
{
    nofralloc
    mflr r0
    stw r0, 4(r1)
    stwu r1, -40(r1)
    stfd fp31, 32(r1)
    stw r31, 28(r1)
    stw r30, 24(r1)
    fmr fp31, rad
    mr r30, m
    mr r31, axis
    fmr fp1, fp31
    bl sinf
    fmr fp0, fp1
    fmr fp1, fp31
    fmr fp31, fp0
    bl cosf
    fmr fp0, fp1
    mr r3, r30
    fmr fp1, fp31
    mr r4, r31
    fmr fp2, fp0
    bl __PSMTXRotAxisRadInternal
    lwz r0, 44(r1)
    lfd fp31, 32(r1)
    lwz r31, 28(r1)
    lwz r30, 24(r1)
    addi r1, r1, 40
    mtlr r0
    blr
}

/**
 * Sets the translation column of matrix m, identity otherwise.
 */
void PSMTXTrans(register Mtx m, register f32 xT, register f32 yT, register f32 zT)
{
    register f32 c0 = lbl_8053B2F4;
    register f32 c1 = lbl_8053B2F0;

#ifdef __MWERKS__
    asm
    {
        stfs xT, 12(m)
        stfs yT, 28(m)
        psq_st c0, 4(m), 0, 0
        psq_st c0, 32(m), 0, 0
        stfs c0, 16(m)
        stfs c1, 20(m)
        stfs c0, 24(m)
        stfs c1, 40(m)
        stfs zT, 44(m)
        stfs c1, 0(m)
    }
#endif
}

/**
 * dst = src with its translation column replaced by (xT, yT, zT) added to
 * src's existing translation.
 */
ASM void PSMTXTransApply(register const Mtx src, register Mtx dst, register f32 xT, register f32 yT, register f32 zT)
{
    nofralloc;
    psq_l fp4, 0(src), 0, 0;
    frsp xT, xT;
    psq_l fp5, 8(src), 0, 0;
    frsp yT, yT;
    psq_l fp7, 24(src), 0, 0;
    frsp zT, zT;
    psq_l fp8, 40(src), 0, 0;
    psq_st fp4, 0(dst), 0, 0;
    ps_sum1 fp5, xT, fp5, fp5;
    psq_l fp6, 16(src), 0, 0;
    psq_st fp5, 8(dst), 0, 0;
    ps_sum1 fp7, yT, fp7, fp7;
    psq_l fp9, 32(src), 0, 0;
    psq_st fp6, 16(dst), 0, 0;
    ps_sum1 fp8, zT, fp8, fp8;
    psq_st fp7, 24(dst), 0, 0;
    psq_st fp9, 32(dst), 0, 0;
    psq_st fp8, 40(dst), 0, 0;
    blr;
}

/**
 * Sets m to a scale matrix (xS, yS, zS) on the diagonal.
 */
void PSMTXScale(register Mtx m, register f32 xS, register f32 yS, register f32 zS)
{
    register f32 c0 = lbl_8053B2F4;

#ifdef __MWERKS__
    asm
    {
        stfs xS, 0(m)
        psq_st c0, 4(m), 0, 0
        psq_st c0, 12(m), 0, 0
        stfs yS, 20(m)
        psq_st c0, 24(m), 0, 0
        psq_st c0, 32(m), 0, 0
        stfs zS, 40(m)
        stfs c0, 44(m)
    }
#endif
}

/**
 * dst = src scaled by (xS, yS, zS) per-row.
 */
ASM void PSMTXScaleApply(register const Mtx src, register Mtx dst, register f32 xS, register f32 yS, register f32 zS)
{
    nofralloc;
    frsp xS, xS;
    psq_l fp4, 0(src), 0, 0;
    frsp yS, yS;
    psq_l fp5, 8(src), 0, 0;
    frsp zS, zS;
    ps_muls0 fp4, fp4, xS;
    psq_l fp6, 16(src), 0, 0;
    ps_muls0 fp5, fp5, xS;
    psq_l fp7, 24(src), 0, 0;
    ps_muls0 fp6, fp6, yS;
    psq_l fp8, 32(src), 0, 0;
    psq_st fp4, 0(dst), 0, 0;
    ps_muls0 fp7, fp7, yS;
    psq_l fp2, 40(src), 0, 0;
    psq_st fp5, 8(dst), 0, 0;
    ps_muls0 fp8, fp8, zS;
    psq_st fp6, 16(dst), 0, 0;
    ps_muls0 fp2, fp2, zS;
    psq_st fp7, 24(dst), 0, 0;
    psq_st fp8, 32(dst), 0, 0;
    psq_st fp2, 40(dst), 0, 0;
    blr;
}

/**
 * Builds an orthographic "light" projection matrix with separate
 * post-projection scale/offset per axis (used for projected-texture/shadow
 * style lighting setups). Ground truth is pure scalar float code (zero
 * paired-single instructions) - matches FF Crystal Chronicles'
 * reference-decomp `C_MTXLightOrtho` exactly in LOGIC. Kept as a raw
 * nofralloc transcription rather than that natural C form though: the
 * natural form's float literals (1.0f/2.0f/0.0f) get pooled as NEW
 * .sdata2 constants local to this function instead of reusing the
 * existing lbl_8053B2F0-family slots this file's other functions already
 * established, growing .sdata2 by several float slots; referencing those
 * slots explicitly via `extern` in turn changes the addressing shape
 * enough to grow .text instead. Neither natural-C variant reproduced
 * retail exactly, so this one is deferred to raw form.
 */
ASM void C_MTXLightOrtho(register Mtx m, register f32 t, register f32 b, register f32 l, register f32 r,
                          register f32 scaleS, register f32 scaleT, register f32 transS, register f32 transT)
{
    nofralloc
    fsubs fp10, r, l
    lfs fp11, -31920(r2) // 1.0f
    fsubs fp0, t, b
    lfs fp9, -31904(r2) // 2.0f
    fadds fp3, r, l
    fdivs fp12, fp11, fp10
    fdivs fp10, fp11, fp0
    fmuls fp4, fp9, fp12
    fneg fp3, fp3
    fadds fp0, t, b
    fmuls fp1, fp4, scaleS
    fmuls fp2, fp12, fp3
    fneg fp0, fp0
    stfs fp1, 0(m)
    fmuls fp1, fp9, fp10
    fmuls fp2, scaleS, fp2
    lfs fp3, -31916(r2) // 0.0f
    fmuls fp0, fp10, fp0
    stfs fp3, 4(m)
    fadds fp2, transS, fp2
    fmuls fp1, fp1, scaleT
    stfs fp3, 8(m)
    fmuls fp0, scaleT, fp0
    stfs fp2, 12(m)
    stfs fp3, 16(m)
    fadds fp0, transT, fp0
    stfs fp1, 20(m)
    stfs fp3, 24(m)
    stfs fp0, 28(m)
    stfs fp3, 32(m)
    stfs fp3, 36(m)
    stfs fp3, 40(m)
    stfs fp11, 44(m)
    blr
}

/**
 * out = m * in (full 3x4 transform including translation).
 */
ASM void PSMTXMultVec(register const Mtx m, register const Vec* in, register Vec* out)
{
    nofralloc;
    psq_l fp0, 0(in), 0, 0;
    psq_l fp2, 0(m), 0, 0;
    psq_l fp1, 8(in), 1, 0;
    ps_mul fp4, fp2, fp0;
    psq_l fp3, 8(m), 0, 0;
    ps_madd fp5, fp3, fp1, fp4;
    psq_l fp8, 16(m), 0, 0;
    ps_sum0 fp6, fp5, fp6, fp5;
    psq_l fp9, 24(m), 0, 0;
    ps_mul fp10, fp8, fp0;
    psq_st fp6, 0(out), 1, 0;
    ps_madd fp11, fp9, fp1, fp10;
    psq_l fp2, 32(m), 0, 0;
    ps_sum0 fp12, fp11, fp12, fp11;
    psq_l fp3, 40(m), 0, 0;
    ps_mul fp4, fp2, fp0;
    psq_st fp12, 4(out), 1, 0;
    ps_madd fp5, fp3, fp1, fp4;
    ps_sum0 fp6, fp5, fp6, fp5;
    psq_st fp6, 8(out), 1, 0;
    blr;
}

/**
 * out = m * in, ignoring m's translation column (scale/rotate only) -
 * used for transforming direction vectors/normals.
 */
ASM void PSMTXMultVecSR(register const Mtx mtx, register const Vec* in, register Vec* out)
{
    nofralloc;
    psq_l fp0, 0(mtx), 0, 0;
    psq_l fp6, 0(in), 0, 0;
    psq_l fp2, 0x10(mtx), 0, 0;
    ps_mul fp8, fp0, fp6;
    psq_l fp4, 0x20(mtx), 0, 0;
    ps_mul fp10, fp2, fp6;
    psq_l fp7, 8(in), 1, 0;
    ps_mul fp12, fp4, fp6;
    psq_l fp3, 0x18(mtx), 0, 0;
    ps_sum0 fp8, fp8, fp8, fp8;
    psq_l fp5, 0x28(mtx), 0, 0;
    ps_sum0 fp10, fp10, fp10, fp10;
    psq_l fp1, 8(mtx), 0, 0;
    ps_sum0 fp12, fp12, fp12, fp12;
    ps_madd fp9, fp1, fp7, fp8;
    psq_st fp9, 0(out), 1, 0;
    ps_madd fp11, fp3, fp7, fp10;
    psq_st fp11, 4(out), 1, 0;
    ps_madd fp13, fp5, fp7, fp12;
    psq_st fp13, 8(out), 1, 0;
    blr;
}

/**
 * Applies PSMTXMultVecSR to `count` consecutive Vecs: out[i] = mtx * in[i]
 * (scale/rotate only, no translation).
 */
ASM void PSMTXMultVecArraySR(register const Mtx m, register const Vec* srcBase, register Vec* dstBase,
                              register u32 count)
{
    nofralloc

    psq_l fp13, 0(m), 0, 0
    psq_l fp12, 16(m), 0, 0
    addi count, count, -1
    psq_l fp11, 8(m), 1, 0
    ps_merge00 fp0, fp13, fp12
    addi dstBase, dstBase, -4
    psq_l fp10, 24(m), 1, 0
    ps_merge11 fp1, fp13, fp12
    mtctr count
    psq_l fp3, 32(m), 0, 0
    ps_merge00 fp2, fp11, fp10
    psq_l fp4, 40(m), 1, 0
    psq_l fp6, 0(srcBase), 0, 0
    psq_lu fp7, 8(srcBase), 1, 0
    ps_muls0 fp8, fp0, fp6
    ps_mul fp9, fp3, fp6
    ps_madds1 fp8, fp1, fp6, fp8
    ps_madd fp10, fp4, fp7, fp9

loop:
    psq_lu fp6, 4(srcBase), 0, 0
    ps_madds0 fp12, fp2, fp7, fp8
    psq_lu fp7, 8(srcBase), 1, 0
    ps_sum0 fp13, fp10, fp9, fp9
    ps_muls0 fp8, fp0, fp6
    ps_mul fp9, fp3, fp6
    psq_stu fp12, 4(dstBase), 0, 0
    ps_madds1 fp8, fp1, fp6, fp8
    psq_stu fp13, 8(dstBase), 1, 0
    ps_madd fp10, fp4, fp7, fp9
    opword 0x4200FFD8 // bdnz+ loop
    ps_madds0 fp12, fp2, fp7, fp8
    ps_sum0 fp13, fp10, fp9, fp9
    psq_stu fp12, 4(dstBase), 0, 0
    psq_stu fp13, 8(dstBase), 1, 0
    blr
}

/**
 * Builds a "light frustum" projection matrix (asymmetric frustum with a
 * post-projection 2D offset, used for projected-texture/shadow-style
 * lighting setups). Ground truth's near-plane-distance factor is loaded
 * from a fixed .sdata2 constant rather than a 9th float parameter, unlike
 * FF Crystal Chronicles' equivalent `C_MTXLightFrustum(m,t,b,l,r,n,scaleS,
 * scaleT,transS,transT)` - this FSA build appears to bake in a fixed near
 * distance for whatever call site(s) use it. Kept as a raw nofralloc block
 * (no attempt at named C-level locals) since there's no reference telling
 * us what a natural-C rewrite's register allocation would look like here.
 */
ASM void PSMTXLightFrustum(register Mtx44 m, register f32 t, register f32 b, register f32 l, register f32 r,
                            register f32 scaleS, register f32 scaleT, register f32 transS, register f32 transT)
{
    nofralloc
    fsubs fp8, r, l
    opword 0xC1228368 // lfs f9, lbl_8053B308@sda21(r0)  (2.0f)
    fsubs fp0, t, b
    opword 0xC0E2836C // lfs f7, lbl_8053B30C@sda21(r0)  (fixed near-distance-like constant)
    fadds fp3, r, l
    fdivs fp10, fp9, fp8
    fdivs fp8, fp9, fp0
    fmuls fp4, fp7, fp10
    fneg fp3, fp3
    fsubs fp0, scaleT, scaleS
    stfs fp4, 0(m)
    fadds fp1, t, b
    fmuls fp2, fp10, fp3
    opword 0xC0628370 // lfs f3, lbl_8053B310@sda21(r0)  (0.0f)
    fneg fp1, fp1
    stfs fp3, 4(m)
    fdivs fp4, fp9, fp0
    stfs fp3, 8(m)
    stfs fp2, 12(m)
    stfs fp3, 16(m)
    fmuls fp2, fp7, fp8
    fneg fp0, scaleT
    fmuls fp1, fp8, fp1
    stfs fp2, 20(m)
    fmuls fp0, fp0, fp4
    stfs fp3, 24(m)
    stfs fp1, 28(m)
    stfs fp3, 32(m)
    stfs fp3, 36(m)
    opword 0xC0228374 // lfs f1, lbl_8053B314@sda21(r0)  (1.0f)
    fmuls fp1, fp1, fp4
    stfs fp1, 40(m)
    stfs fp0, 44(m)
    stfs fp3, 48(m)
    stfs fp3, 52(m)
    stfs fp3, 56(m)
    stfs fp9, 60(m)
    blr
}

/**
 * dst = normalize(src) (3-component vector).
 */
ASM void PSVECNormalize(register const Vec* src, register Vec* dst)
{
    nofralloc
    opword 0xC0028378 // lfs f0, lbl_8053B318@sda21(r0)  (0.5f)
    opword 0xC022837C // lfs f1, lbl_8053B31C@sda21(r0)  (3.0f)
    psq_l f2, 0(src), 0, 0
    ps_mul f5, f2, f2
    psq_l f3, 8(src), 1, 0
    ps_madd f4, f3, f3, f5
    ps_sum0 f4, f4, f3, f5
    frsqrte f5, f4
    fmuls f6, f5, f5
    fmuls f0, f5, f0
    fnmsubs f6, f6, f4, f1
    fmuls f5, f6, f0
    ps_muls0 f2, f2, f5
    psq_st f2, 0(dst), 0, 0
    ps_muls0 f3, f3, f5
    psq_st f3, 8(dst), 1, 0
    blr
}

/**
 * Returns the magnitude (length) of vector v, or 0.0f if v is the zero
 * vector (avoids a divide-by-zero in the reciprocal-sqrt refinement).
 *
 * Same deferred-to-raw-form situation as PSMTXIdentity/PSMTXRotTrig above:
 * genuinely understood logic (matches FF Crystal Chronicles'
 * reference-decomp `PSVECMag` exactly), but MWCC's scheduler reorders the
 * two independent loads (the 0.5f constant vs. v's first component)
 * differently than retail, and its encoding of the early-out branch to a
 * natural-C-level local label differs from what `opword`-transcribing the
 * real bytes produces. Real names/logic; raw register body for an exact
 * match.
 */
ASM f32 PSVECMag(register const Vec* v)
{
    nofralloc
    lfs fp4, -31880(r2) // c_half = 0.5f
    psq_l fp0, 0(v), 0, 0 // vxy
    ps_mul fp0, fp0, fp0
    lfs fp1, 8(v) // vzz
    fsubs fp2, fp4, fp4 // c_zero
    ps_madd fp1, fp1, fp1, fp0 // sqmag
    ps_sum0 fp1, fp1, fp0, fp0
    fcmpu cr0, fp1, fp2
    opword 0x41820020 // beq lbl_ret
    frsqrte fp0, fp1 // rmag
    lfs fp3, -31876(r2) // c_three = 3.0f
    fmuls fp2, fp0, fp0 // nwork0
    fmuls fp0, fp0, fp4 // nwork1
    fnmsubs fp2, fp2, fp1, fp3
    fmuls fp0, fp2, fp0
    fmuls fp1, fp1, fp0
lbl_ret:
    blr
}

/**
 * Returns the dot product of vec1 and vec2.
 */
ASM f32 PSVECDotProduct(register const Vec* vec1, register const Vec* vec2)
{
    nofralloc
    psq_l fp2, 4(vec1), 0, 0
    psq_l fp3, 4(vec2), 0, 0
    ps_mul fp2, fp2, fp3
    psq_l fp5, 0(vec1), 0, 0
    psq_l fp4, 0(vec2), 0, 0
    ps_madd fp3, fp5, fp4, fp2
    ps_sum0 fp1, fp3, fp2, fp2
    blr
}

/**
 * ret = vec1 x vec2 (cross product).
 */
ASM void PSVECCrossProduct(register const Vec* vec1, register const Vec* vec2, register Vec* ret)
{
    nofralloc;
    psq_l fp1, 0(vec2), 0, 0
    lfs fp2, 8(vec1)
    psq_l fp0, 0(vec1), 0, 0
    ps_merge10 fp6, fp1, fp1
    lfs fp3, 8(vec2)
    ps_mul fp4, fp1, fp2
    ps_muls0 fp7, fp1, fp0
    ps_msub fp5, fp0, fp3, fp4
    ps_msub fp8, fp0, fp6, fp7
    ps_merge11 fp9, fp5, fp5
    ps_merge01 fp10, fp5, fp8
    psq_st fp9, 0(ret), 1, 0
    ps_neg fp10, fp10
    psq_st fp10, 4(ret), 0, 0
    blr;
}

/**
 * Reflects `src` off a surface with unit `normal`, writing the result to
 * dst (dst = reflect(-src, normal)). Ground truth calls PSVECNormalize
 * (twice, on a negated copy of src and on normal) then PSVECDotProduct,
 * matching FF Crystal Chronicles' reference-decomp `C_VECReflect` exactly
 * in LOGIC. Deferred to raw form like the other functions above though:
 * MWCC compiles the natural-C form with the three `a0.* = -src->*;`
 * assignments batched (load all three, negate all three, store all
 * three) using a differently-sized stack frame, where retail's real build
 * interleaves each load/negate/store individually. Real logic, calling
 * the other real functions in this file by name; raw register body for
 * an exact match.
 */
ASM void PSVECReflect(register const Vec* src, register const Vec* normal, register Vec* dst)
{
    nofralloc
    mflr r0
    stw r0, 4(r1)
    stwu r1, -56(r1)
    stw r31, 52(r1)
    stw r30, 48(r1)
    mr r30, normal
    mr r31, dst
    lfs fp0, 0(src)
    fneg fp0, fp0
    stfs fp0, 32(r1)
    lfs fp0, 4(src)
    fneg fp0, fp0
    stfs fp0, 36(r1)
    lfs fp0, 8(src)
    addi r3, r1, 32
    mr r4, r3
    fneg fp0, fp0
    stfs fp0, 40(r1)
    bl PSVECNormalize
    mr r3, r30
    addi r4, r1, 20
    bl PSVECNormalize
    addi r3, r1, 32
    addi r4, r1, 20
    bl PSVECDotProduct
    lfs fp3, -31872(r2) // 2.0f, this function's own distinct copy
    mr r3, r31
    lfs fp2, 20(r1)
    mr r4, r31
    lfs fp0, 32(r1)
    fmuls fp2, fp3, fp2
    fmuls fp2, fp2, fp1
    fsubs fp0, fp2, fp0
    stfs fp0, 0(r31)
    lfs fp2, 24(r1)
    lfs fp0, 36(r1)
    fmuls fp2, fp3, fp2
    fmuls fp2, fp2, fp1
    fsubs fp0, fp2, fp0
    stfs fp0, 4(r31)
    lfs fp2, 28(r1)
    lfs fp0, 40(r1)
    fmuls fp2, fp3, fp2
    fmuls fp1, fp2, fp1
    fsubs fp0, fp1, fp0
    stfs fp0, 8(r31)
    bl PSVECNormalize
    lwz r0, 60(r1)
    lwz r31, 52(r1)
    lwz r30, 48(r1)
    addi r1, r1, 56
    mtlr r0
    blr
}

/**
 * Returns the distance between vec1 and vec2, or 0.0f if they coincide.
 */
ASM f32 PSVECDistance(register const Vec* vec1, register const Vec* vec2)
{
    nofralloc
    psq_l fp0, 4(vec1), 0, 0
    psq_l fp1, 4(vec2), 0, 0
    ps_sub fp2, fp0, fp1
    psq_l fp0, 0(vec1), 0, 0
    psq_l fp1, 0(vec2), 0, 0
    ps_mul fp2, fp2, fp2
    ps_sub fp0, fp0, fp1
    opword 0xC0628378 // lfs f3, lbl_8053B318@sda21(r0)  (0.5f)
    ps_madd fp1, fp0, fp0, fp2
    fsubs fp0, fp3, fp3
    ps_sum0 fp1, fp1, fp2, fp2
    fcmpu cr0, fp0, fp1
    opword 0x41820020 // beq __exit
    opword 0xC082837C // lfs f4, lbl_8053B31C@sda21(r0)  (3.0f)
    frsqrte fp0, fp1
    fmuls fp2, fp0, fp0
    fmuls fp0, fp0, fp3
    fnmsubs fp2, fp2, fp1, fp4
    fmuls fp0, fp2, fp0
    fmuls fp1, fp1, fp0
__exit:
    blr
}
