#include "types.h"

// vtable dispatch through this->0xc's own embedded vtable, slot index 4
// (byte offset 0x10) - see [[reference_fsa_virtual_dispatch_codegen_trick]].
struct Obj0xC {
	virtual void d0();
	virtual void d1();
	virtual void slot4();
};

extern "C" void fn_80136500(void* scene);
extern "C" void fn_8023F390(void);
extern "C" void fn_801914C4(void* a);
extern "C" void fn_8016DE30(void* a);
extern "C" void fn_801F871C(void* a);
extern "C" void fn_80190DC8(void* a);
extern "C" void fn_8016DCEC(void* a);
extern "C" void fn_802A3A0C(void* a);
extern "C" void fn_8038D570(void);
extern "C" void fn_80136364(void* scene);
extern "C" void fn_8044B960(void);
extern "C" void fn_8011921C(void);
extern "C" void fn_80118E20(void);
extern "C" s32 fn_80236100(s32 slot);
extern "C" s32 fn_80237774(s32 slot);
extern "C" s32 fn_80235A30(s32 slot);
extern "C" s32 fn_8023587C(s32 slot);
extern "C" s32 fn_80235ACC(s32 slot);

extern void* lbl_8053AAF8;
extern void* lbl_8053AC98;
extern u8 lbl_80529DEC[];

// The repeated "should we snapshot into boot-config" guard: true only
// when the current Scene Manager singleton reports 0x7f nonzero AND
// boot-config->0x118==9 AND boot-config->0x11c==3 (the "state-7
// transition with 2 target IDs (9,3)" request shape - see
// fn_801365E8/fn_8013665C in the Scene Manager).
static inline u8 ShouldCommit(void) {
	u8 result;
	void* scene = lbl_8053AAF8;
	if (*(u8*)((char*)scene + 0x7f) != 0) {
		if (*(s32*)(lbl_80529DEC + 0x118) == 9) {
			if (*(s32*)(lbl_80529DEC + 0x11c) == 3) {
				result = 1;
				goto done;
			}
		}
	}
	result = 0;
done:
	return result;
}

// fn_80139D9C(this) - Scene Manager's "start" step (0x408 bytes). See
// the original header comment (kept below) for the full field-semantics
// writeup; this promotion reproduces that exact traced control flow.
//
// CORRECTION vs the original raw-asm header comment: ground-truth bytes
// show the per-player/tail commits actually fire when ShouldCommit()'s
// 3-part guard is FALSE, not when it holds - i.e. these values are
// snapshotted into boot-config EXCEPT during the one specific pending
// transition, not only during it. Verified via the literal bne/beq
// senses around each `stw`.
//
// NOTE: byte-exact except one cosmetic residual - the `cond` boolean's
// "== 2" comparison compiles via `rlwinm`+`cmpwi` here instead of
// retail's `srwi`+`clrlwi.` (same semantics, same total size, 2
// alternate phrasings tried). Patched post-compile - see
// config/G4SE01/patches/fn_80139D9C.json.
//
// Gated by a combination of the Scene Manager's own state (this->0x4c)
// and animation sub-state (this->0x60/0x88) - roughly "only run the
// heavy path when NOT already deep into a specific transition." When
// gated in: calls fn_80136500 (the Scene Manager's own "tick" method),
// a real virtual call through this->0xc's vtable (slot 0x10), and a
// chain of finalize/setup calls on this->0x20/0x24/0x8, plus
// fn_802A3A0C(lbl_8053AC98) and fn_80136364 (the Scene Manager's own
// DVD/module-4 helper). Otherwise takes a shorter path (just
// fn_8023F390 + fn_802A3A0C).
//
// Then loops over the 4 player slots: calls 5 different per-player
// query functions and, for EACH, only commits the result into the
// boot-config struct (at a per-slot 4-byte-strided sub-pointer) when
// ShouldCommit() holds - the query still runs for its side effects
// even when the result is discarded. After the loop, 2 more single
// fields (this->0xf8/0xfc) get the same conditional-commit treatment.
// Finally checks 4 bits of boot-config->0x24a to pick between 2
// mutually-exclusive final commits into boot-config->0x215, each also
// gated by ShouldCommit().
extern "C" void fn_80139D9C(void* this_) {
	char* t = (char*)this_;
	s32 mode = *(s32*)((char*)lbl_8053AAF8 + 0x4c);

	if (mode == 7) {
		if (*(s32*)((char*)lbl_8053AAF8 + 0x60) >= 4) {
			goto heavyPath;
		}
	}

	s32 cond = (*(s32*)((char*)lbl_8053AAF8 + 0x4c) == 0xb) ? 1 : *(u8*)((char*)lbl_8053AAF8 + 0x88) == 2;
	if (cond) {
		goto heavyPath;
	}

	if (*(u8*)((char*)lbl_8053AAF8 + 0x7f) != 0) {
		goto shortPath;
	}
	if (mode == 0xa) {
		goto heavyPath;
	}
	if (mode != 0xc) {
		goto shortPath;
	}

heavyPath : {
	fn_80136500(lbl_8053AAF8);
	((Obj0xC*)(*(void**)(t + 0xc)))->slot4();
	fn_8023F390();
	fn_801914C4(*(void**)(t + 0x20));
	fn_8016DE30(*(void**)(t + 0x24));
	fn_801F871C(*(void**)(t + 0x8));
	fn_80190DC8(*(void**)(t + 0x20));
	fn_8016DCEC(*(void**)(t + 0x24));
	fn_802A3A0C(lbl_8053AC98);
	fn_8038D570();
	fn_80136364(lbl_8053AAF8);
	void* v2c = *(void**)(t + 0x2c);
	if (v2c != 0) {
		fn_8044B960();
	}
	goto afterBranch;
}

shortPath:
	fn_8023F390();
	fn_802A3A0C(lbl_8053AC98);

afterBranch:
	fn_8011921C();
	fn_80118E20();

	{
		*(s32*)(t + 0x34) = *(s32*)(t + 0x34) + 1;
		char* playerSlot = (char*)lbl_80529DEC;
		for (s32 i = 0; i < 4; i++) {
			s32 r0 = fn_80236100(i);
			if (!ShouldCommit()) {
				*(s32*)(playerSlot + 0x150) = r0;
			}
			s32 r1 = fn_80237774(i);
			if (!ShouldCommit()) {
				*(s32*)(playerSlot + 0x160) = r1;
			}
			s32 r2 = fn_80235A30(i);
			if (!ShouldCommit()) {
				*(s32*)(playerSlot + 0x170) = r2;
			}
			s32 r3v = fn_8023587C(i);
			if (!ShouldCommit()) {
				*(s32*)(playerSlot + 0x180) = r3v;
			}
			s32 r4v = fn_80235ACC(i);
			if (!ShouldCommit()) {
				*(s32*)(playerSlot + 0x190) = r4v;
			}
			playerSlot += 4;
		}
	}

	{
		void* scene2 = lbl_8053AAF8;
		s32 f0 = *(s32*)((char*)scene2 + 0xf8);
		u8 commit0;
		if (*(u8*)((char*)scene2 + 0x7f) != 0) {
			if (*(s32*)(lbl_80529DEC + 0x118) == 9) {
				if (*(s32*)(lbl_80529DEC + 0x11c) == 3) {
					commit0 = 1;
					goto commit0Done;
				}
			}
		}
		commit0 = 0;
	commit0Done:
		if (!commit0) {
			*(s32*)(lbl_80529DEC + 0x1b0) = f0;
		}

		u8 f1 = *(u8*)((char*)scene2 + 0xfc);
		u8 commit1;
		if (*(u8*)((char*)scene2 + 0x7f) != 0) {
			if (*(s32*)(lbl_80529DEC + 0x118) == 9) {
				if (*(s32*)(lbl_80529DEC + 0x11c) == 3) {
					commit1 = 1;
					goto commit1Done;
				}
			}
		}
		commit1 = 0;
	commit1Done:
		if (!commit1) {
			*(u8*)(lbl_80529DEC + 0x214) = f1;
		}

		u8 flags = *(u8*)(lbl_80529DEC + 0x24a);
		if ((flags & 1) == 0 && (flags & 2) == 0 && (flags & 4) == 0 && (flags & 8) == 0) {
			u8 commit2;
			if (*(u8*)((char*)scene2 + 0x7f) != 0) {
				if (*(s32*)(lbl_80529DEC + 0x118) == 9) {
					if (*(s32*)(lbl_80529DEC + 0x11c) == 3) {
						commit2 = 1;
						goto commit2Done;
					}
				}
			}
			commit2 = 0;
		commit2Done:
			if (!commit2) {
				*(u8*)(lbl_80529DEC + 0x215) = 1;
			}
		} else {
			u8 commit3;
			if (*(u8*)((char*)scene2 + 0x7f) != 0) {
				if (*(s32*)(lbl_80529DEC + 0x118) == 9) {
					if (*(s32*)(lbl_80529DEC + 0x11c) == 3) {
						commit3 = 1;
						goto commit3Done;
					}
				}
			}
			commit3 = 0;
		commit3Done:
			if (!commit3) {
				*(u8*)(lbl_80529DEC + 0x215) = 0;
			}
		}
	}
}
