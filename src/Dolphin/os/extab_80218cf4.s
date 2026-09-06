/*
 * NEW ACTOR (vtable lbl_804A6550, ctor fn_8021A234) - not yet identified
 * by name. Shares the same base-class field layout as TINK and the
 * orbit-attacker (0x248 state, 0x230 flags, 0x2b4 variant/type index).
 * While variant is 0 or 3 and state is in {4,5,8,9}, latches a global
 * manager flag (lbl_8053AB10->0x30->0x284) once - the same pattern as
 * [[project_fsa_orbit_attacker_actor_progress]]'s fn_8021D938, now
 * cross-confirmed on a third actor. If flag bit 15 is set: for state
 * 0-1, sets a "cutscene busy"-style byte on the manager (->0x24->0x17d).
 * If bit 15 clear: clamps this->0xc/0x10/0x14 against a room-config
 * boundary box (GetRoomConfigRecord) using an fsel-based min/max; on a valid
 * clamp result, for state 4/5 (and variant 0) registers a "boss/focus
 * target" descriptor with the manager (->0x24->0x7f4-0x804: active
 * flag, type=4, clamped position) if not already registered; for other
 * states/variants, instead triggers an effect via the confirmed
 * fn_8030C210(manager->0x24, point) - the same trigger used by the
 * orbit-attacker.
 */
.section extab, "a"
.balign 4
.global etb_8000A328
etb_8000A328:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A328, 8

.section extabindex, "a"
.balign 4
.global eti_80018004
eti_80018004:
    .4byte fn_80218CF4
    .4byte 0x0000028C
    .4byte etb_8000A328
.size eti_80018004, 12

.text
.balign 4
.global fn_80218CF4

fn_80218CF4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    lwz 0, 0x2b4(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80218D20
    cmpwi 0, 0x3
    .4byte 0x40820050 # bne .L_80218D6C
L_80218D20:
    lwz 0, 0x248(31)
    cmpwi 0, 0x8
    .4byte 0x40800018 # bge .L_80218D40
    cmpwi 0, 0x6
    .4byte 0x4080003C # bge .L_80218D6C
    cmpwi 0, 0x4
    .4byte 0x40800010 # bge .L_80218D48
    .4byte 0x48000030 # b .L_80218D6C
L_80218D40:
    cmpwi 0, 0xa
    .4byte 0x40800028 # bge .L_80218D6C
L_80218D48:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80218D6C
    li 0, 0x1
    .4byte 0xC002CCB8 # lfs f0, lbl_8053FC58@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_80218D6C:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x41820030 # beq .L_80218DA4
    lwz 0, 0x248(31)
    cmpwi 0, 0x2
    .4byte 0x408001E8 # bge .L_80218F68
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_80218D90
    .4byte 0x480001DC # b .L_80218F68
L_80218D90:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x24(3)
    stb 0, 0x17d(3)
    .4byte 0x480001C8 # b .L_80218F68
L_80218DA4:
    lwz 0, 0x2b4(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80218DB8
    cmpwi 0, 0x1
    .4byte 0x408201B4 # bne .L_80218F68
L_80218DB8:
    lwz 0, 0x248(31)
    cmpwi 0, 0x8
    .4byte 0x40800018 # bge .L_80218DD8
    cmpwi 0, 0x6
    .4byte 0x408001A0 # bge .L_80218F68
    cmpwi 0, 0x4
    .4byte 0x40800010 # bge .L_80218DE0
    .4byte 0x48000194 # b .L_80218F68
L_80218DD8:
    cmpwi 0, 0xa
    .4byte 0x4080018C # bge .L_80218F68
L_80218DE0:
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_80218DF8
    addi 30, 3, 0xcc
    .4byte 0x48000008 # b .L_80218DFC
L_80218DF8:
    addi 30, 3, 0xdc
L_80218DFC:
    lfs 1, 0x10(31)
    li 0, 0x0
    lfs 0, 0x14(31)
    lfs 4, 0xc(31)
    fsubs 1, 1, 0
    .4byte 0xC002CCBC # lfs f0, lbl_8053FC5C@sda21(r0)
    stfs 4, 0x8(1)
    .4byte 0xC062CCC0 # lfs f3, lbl_8053FC60@sda21(r0)
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    lfs 2, 0x4(30)
    fadds 0, 3, 2
    fsubs 5, 0, 1
    fsel 5, 5, 0, 1
    stfs 5, 0xc(1)
    lfs 1, 0x0(30)
    fadds 6, 3, 1
    fsubs 0, 6, 4
    fsel 0, 0, 6, 4
    stfs 0, 0x8(1)
    frsp 4, 0
    lfs 0, 0x8(30)
    fsubs 6, 0, 3
    fsubs 3, 6, 4
    fsel 3, 3, 4, 6
    frsp 4, 3
    stfs 3, 0x8(1)
    fcmpo cr0, 4, 1
    cror eq, gt, eq
    .4byte 0x4082002C # bne .L_80218E9C
    frsp 1, 5
    fcmpo cr0, 1, 2
    cror eq, gt, eq
    .4byte 0x4082001C # bne .L_80218E9C
    fcmpo cr0, 4, 0
    .4byte 0x40800014 # bge .L_80218E9C
    lfs 0, 0xc(30)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80218E9C
    li 0, 0x1
L_80218E9C:
    clrlwi. 0, 0, 24
    .4byte 0x418200C8 # beq .L_80218F68
    lwz 0, 0x2b4(31)
    cmpwi 0, 0x0
    .4byte 0x40820060 # bne .L_80218F0C
    lwz 0, 0x248(31)
    cmpwi 0, 0x4
    .4byte 0x4182000C # beq .L_80218EC4
    cmpwi 0, 0x5
    .4byte 0x4082004C # bne .L_80218F0C
L_80218EC4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820094 # bne .L_80218F68
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0x8(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0xc(1)
    stfs 0, 0x800(4)
    lfs 0, 0x10(1)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
    .4byte 0x48000060 # b .L_80218F68
L_80218F0C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x8
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 0, 0x248(31)
    cmpwi 0, 0xa
    .4byte 0x40800044 # bge .L_80218F68
    cmpwi 0, 0x8
    .4byte 0x40800008 # bge .L_80218F34
    .4byte 0x48000038 # b .L_80218F68
L_80218F34:
    .4byte 0xC062CCC0 # lfs f3, lbl_8053FC60@sda21(r0)
    addi 4, 1, 0x8
    lfs 2, 0x4(30)
    lfs 1, 0xc(1)
    .4byte 0xC002CCC4 # lfs f0, lbl_8053FC64@sda21(r0)
    fadds 2, 3, 2
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fsubs 1, 1, 0
    fsubs 0, 2, 1
    fsel 0, 0, 2, 1
    stfs 0, 0xc(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
L_80218F68:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

