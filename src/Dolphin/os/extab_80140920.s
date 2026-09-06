.section extab, "a"
.balign 4
.global etb_80006C3C
etb_80006C3C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006C3C, 8

.section extabindex, "a"
.balign 4
.global eti_800135E8
eti_800135E8:
    .4byte fn_80140920
    .4byte 0x000002E0
    .4byte etb_80006C3C
.size eti_800135E8, 12

.text
.balign 4
.global fn_80140920

# fn_80140920(this) - OKTA (Octorok)'s real setParams(). Genuinely
# understood:
#
# 1. Standard hitbox init, zeroes a large state block
#    (`0x234-0x258`/`0x24c-0x258`), and increments a GLOBAL spawn counter
#    (`lbl_8053AB28`) - a new global, likely a "total enemies of this
#    kind spawned" or unique-instance-ID tally.
# 2. Steps the CONFIRMED global PRNG (`lbl_8053AAF8->0xb4`) THREE times to
#    compute: an initial movement direction (`this->0x98`, clamped 0-3 -
#    Octorok's classic 4-directional wander/shoot behavior) and 2
#    jittered timers (`this->0x234`/`this->0x238`, base 50/100 frames
#    plus PRNG jitter) - almost certainly randomized "time until next
#    direction change" / "time until next shot" cooldowns.
# 3. **Type dispatch** (`this->0x90`, the spawn-param type field):
#    - type 1: smaller hitbox, a 264-frame countdown (`this->0x108`),
#      sets a variant/kind enum (`this->0xc0=5`) and a state byte
#      (`this->0x278=4`) - a distinct visual sub-variant (plausibly the
#      "rock-throwing"/land Octorok vs. the default water-spitting one).
#    - type 2: a 10000-frame "long wait" timer (`this->0x238`, matching
#      the SAME "wait for player to approach" pattern seen in WIZR's
#      setParams, [[project_fsa_stal_wizr_full_depth]]) plus
#      `this->0x270=400`, `this->0xb8=1`, `this->0x278=5`.
# 4. **Direction-to-velocity dispatch** (`this->0x98`, 0-4): converts the
#    4-directional value into an actual velocity vector
#    (`this->0x27c/280/284`) using +/-/0 combinations of a shared speed
#    constant - the classic cardinal-direction movement/projectile-aim
#    setup for an Octorok.
fn_80140920:
    stwu 1, -0x30(1)
    lis 4, 0x1
    .4byte 0xC0229EE0 # lfs f1, lbl_8053CE80@sda21(r0)
    lis 5, 0x19
    addi 6, 5, 0x660d
    .4byte 0xC0A29EE4 # lfs f5, lbl_8053CE84@sda21(r0)
    stfs 1, 0x60(3)
    li 7, 0x0
    .4byte 0xC0829E88 # lfs f4, lbl_8053CE28@sda21(r0)
    addi 0, 4, 0x1101
    stfs 1, 0x64(3)
    li 5, 0x3
    .4byte 0xC0629E8C # lfs f3, lbl_8053CE2C@sda21(r0)
    stfs 5, 0x68(3)
    .4byte 0xC0029EB0 # lfs f0, lbl_8053CE50@sda21(r0)
    stfs 5, 0x6c(3)
    .4byte 0xC0429EE8 # lfs f2, lbl_8053CE88@sda21(r0)
    stfs 1, 0x80(3)
    .4byte 0xC0229EB4 # lfs f1, lbl_8053CE54@sda21(r0)
    stfs 4, 0x84(3)
    stfs 5, 0x88(3)
    stfs 5, 0x8c(3)
    stw 7, 0x24c(3)
    stw 7, 0x250(3)
    stw 7, 0x254(3)
    stw 7, 0x258(3)
    stw 7, 0x234(3)
    stw 7, 0x238(3)
    stw 7, 0x23c(3)
    stw 7, 0x240(3)
    stw 7, 0x244(3)
    stw 7, 0x248(3)
    stfs 3, 0x260(3)
    stfs 3, 0x264(3)
    stfs 3, 0x268(3)
    stfs 0, 0x26c(3)
    .4byte 0x808D8F68 # lwz r4, lbl_8053AB28@sda21(r0)
    clrlwi 4, 4, 27
    stw 4, 0x274(3)
    .4byte 0x808D8F68 # lwz r4, lbl_8053AB28@sda21(r0)
    addi 4, 4, 0x1
    .4byte 0x908D8F68 # stw r4, lbl_8053AB28@sda21(r0)
    lwz 4, 0x90(3)
    clrlwi 4, 4, 24
    stw 4, 0x90(3)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(8)
    mullw 4, 4, 6
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(8)
    lwz 4, 0xb4(8)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x10(1)
    lfs 0, 0x10(1)
    fsubs 0, 0, 3
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    clrlwi 4, 4, 30
    stw 4, 0x98(3)
    stw 0, 0xb0(3)
    stw 7, 0x270(3)
    stfs 3, 0x25c(3)
    stb 5, 0x278(3)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(7)
    mullw 4, 0, 6
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(7)
    lwz 0, 0xb4(7)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    addi 0, 4, 0x32
    stw 0, 0x234(3)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(7)
    mullw 4, 0, 6
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(7)
    lwz 0, 0xb4(7)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 3
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    addi 0, 4, 0x64
    stw 0, 0x238(3)
    lwz 0, 0x90(3)
    cmpwi 0, 0x2
    .4byte 0x4182007C # beq .L_80140B40
    .4byte 0x40800098 # bge .L_80140B60
    cmpwi 0, 0x0
    .4byte 0x41820090 # beq .L_80140B60
    .4byte 0x4080000C # bge .L_80140AE0
    .4byte 0x48000088 # b .L_80140B60
    .4byte 0x48000084 # b .L_80140B60
L_80140AE0:
    .4byte 0xC0029EEC # lfs f0, lbl_8053CE8C@sda21(r0)
    li 4, 0x30
    .4byte 0xC0829E94 # lfs f4, lbl_8053CE34@sda21(r0)
    li 0, 0x4
    stfs 0, 0x25c(3)
    .4byte 0xC0629EF0 # lfs f3, lbl_8053CE90@sda21(r0)
    stw 5, 0xc0(3)
    .4byte 0xC0429E9C # lfs f2, lbl_8053CE3C@sda21(r0)
    stw 4, 0x108(3)
    .4byte 0xC0229EF4 # lfs f1, lbl_8053CE94@sda21(r0)
    stfs 4, 0x260(3)
    .4byte 0xC0029EF8 # lfs f0, lbl_8053CE98@sda21(r0)
    stfs 4, 0x264(3)
    stfs 4, 0x268(3)
    stb 0, 0x278(3)
    stfs 3, 0x60(3)
    stfs 3, 0x64(3)
    stfs 2, 0x68(3)
    stfs 2, 0x6c(3)
    stfs 1, 0x80(3)
    stfs 3, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    .4byte 0x48000024 # b .L_80140B60
L_80140B40:
    li 0, 0x2710
    li 5, 0x190
    stw 0, 0x238(3)
    li 4, 0x1
    li 0, 0x5
    stw 5, 0x270(3)
    stw 4, 0xb8(3)
    stb 0, 0x278(3)
L_80140B60:
    lwz 0, 0x98(3)
    cmpwi 0, 0x2
    .4byte 0x41820058 # beq .L_80140BC0
    .4byte 0x40800014 # bge .L_80140B80
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80140B8C
    .4byte 0x4080002C # bge .L_80140BA4
    .4byte 0x48000074 # b .L_80140BF0
L_80140B80:
    cmpwi 0, 0x4
    .4byte 0x4080006C # bge .L_80140BF0
    .4byte 0x48000050 # b .L_80140BD8
L_80140B8C:
    lfs 1, 0x25c(3)
    .4byte 0xC0029E88 # lfs f0, lbl_8053CE28@sda21(r0)
    stfs 1, 0x27c(3)
    stfs 0, 0x280(3)
    stfs 0, 0x284(3)
    .4byte 0x48000050 # b .L_80140BF0
L_80140BA4:
    lfs 1, 0x25c(3)
    .4byte 0xC0029E88 # lfs f0, lbl_8053CE28@sda21(r0)
    fneg 1, 1
    stfs 1, 0x27c(3)
    stfs 0, 0x280(3)
    stfs 0, 0x284(3)
    .4byte 0x48000034 # b .L_80140BF0
L_80140BC0:
    lfs 1, 0x25c(3)
    .4byte 0xC0029E88 # lfs f0, lbl_8053CE28@sda21(r0)
    stfs 0, 0x27c(3)
    stfs 1, 0x280(3)
    stfs 0, 0x284(3)
    .4byte 0x4800001C # b .L_80140BF0
L_80140BD8:
    lfs 1, 0x25c(3)
    .4byte 0xC0029E88 # lfs f0, lbl_8053CE28@sda21(r0)
    fneg 1, 1
    stfs 0, 0x27c(3)
    stfs 1, 0x280(3)
    stfs 0, 0x284(3)
L_80140BF0:
    li 0, 0x0
    stw 0, 0x230(3)
    addi 1, 1, 0x30
    blr

