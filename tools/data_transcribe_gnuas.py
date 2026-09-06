"""
Convert a dtk auto-disasm dump of a DATA-like section (.rodata/.data/.sdata/
.sdata2/.bss/.sbss/.sbss2) into a GNU-AS .s file, the data-section sibling of
tools/asm_transcribe_gnuas.py (which only handles .text/extab/extabindex).

Fix-set applied:
  - .obj NAME, scope / .obj "@NAME", scope -> tracked the same way the code
    tool tracks extab objects: a 'global' quoted-@ object keeps the literal
    '"@name"' form (other TUs may reference it that way); everything else
    emits a plain symbol.
  - .float/.double literals -> converted to raw .4byte hex (two .4byte words
    for .double, big-endian high-then-low) instead of trusting GNU AS to
    parse dtk's printed decimal string back to the IDENTICAL bit pattern.
    This is a deliberate correctness-over-readability choice: shortest-
    round-trip decimal printing SHOULD parse back exactly, but a byte-exact
    project has zero reason to rely on that when the exact bits are known.
  - .rel NAME, LABEL (a dtk pseudo-op for a relocation whose target isn't a
    plain "value at offset 0 of NAME") -> the LABEL name itself encodes the
    true target address (.L_XXXXXXXX); NAME's own address is looked up in
    symbols.txt, and the emitted word is '.4byte NAME+0xOFFSET' (or plain
    '.4byte NAME' when the offset is exactly 0). Verified byte-exact via
    build+diff against a real 3-instance case (an 80-byte-stride struct
    array, .rel entries pointing at elements 1/2/3) before trusting this -
    an earlier offset-0-always version was wrong for all 3 and confirmed
    via diff to be the ONLY discrepancy (isolated, no cascade), which is
    what justified this fix rather than a different mechanism entirely.
  - .hidden NAME -> preserved (re-emitted right after that name's .global).
  - Local labels (.L_XXXXXXXX:) -> dot stripped, same convention as the code
    tool, for consistency.

Usage: py data_transcribe_gnuas.py <auto_disasm.s> <out.s>
"""
import os
import re
import sys

SYMBOLS_PATH = os.path.join(os.path.dirname(__file__), '..', 'config', 'G4SE01', 'symbols.txt')
_symbol_addrs = None


def symbol_address(name):
    """Look up a symbol's address in symbols.txt (any section) - used to
    resolve .rel's true target offset. Returns None if not found (e.g. the
    name is itself a local .L_/gap_/jumptable_ label dtk invented, which
    won't appear in symbols.txt - callers should fall back to offset-0 with
    a loud warning in that case, not silently guess)."""
    global _symbol_addrs
    if _symbol_addrs is None:
        _symbol_addrs = {}
        pat = re.compile(r'^(\S+) = \.\w+:0x([0-9A-Fa-f]+);')
        with open(SYMBOLS_PATH, encoding='utf-8') as f:
            for line in f:
                m = pat.match(line)
                if m:
                    _symbol_addrs[m.group(1)] = int(m.group(2), 16)
    return _symbol_addrs.get(name)


# Names may contain '$' (Metrowerks' static-local disambiguation suffix,
# e.g. "EndofProgramInstruction$162_8045D9D0") - \w+ alone silently drops
# these (regex simply fails to match, object vanishes with no error).
OBJ_RE = re.compile(r'^\.obj (?:"@([\w$]+)"|([\w$]+)), (local|global|weak)$')
ENDOBJ_RE = re.compile(r'^\.endobj\b')
HIDDEN_RE = re.compile(r'^\.hidden (\S+)$')
REL_RE = re.compile(r'^\.rel (\S+), (\.L_[0-9A-Fa-f]+)$')
LOCAL_LABEL_RE = re.compile(r'^(\.L_[0-9A-Fa-f]+):$')
FLOAT_RE = re.compile(r'^\.float (\S+)$')
DOUBLE_RE = re.compile(r'^\.double (\S+)$')
SECTION_HDR_RE = re.compile(r'^(\.rodata|\.data|\.section\s+\.\S+.*)$')


def float_to_hex(s):
    import struct
    return struct.pack('>f', float(s)).hex().upper()


def double_to_hex_words(s):
    import struct
    b = struct.pack('>d', float(s))
    return b[0:4].hex().upper(), b[4:8].hex().upper()


def convert(src_path, out_path):
    lines = open(src_path, encoding='utf-8').read().splitlines()
    out = []
    section_header = None
    balign = None

    objects = []  # list of dicts: {quoted_name, plain_name, scope, body: [lines]}
    cur_obj = None
    hidden_names = set()

    i = 0
    n = len(lines)
    while i < n:
        l = lines[i]
        s = l.strip()

        if s.startswith('.include') or s.startswith('.file') or s == '':
            i += 1
            continue

        if SECTION_HDR_RE.match(s) and cur_obj is None:
            section_header = s
            i += 1
            continue

        if s == '.balign 4' or s.startswith('.balign'):
            if cur_obj is None:
                balign = s
            i += 1
            continue

        m = OBJ_RE.match(s)
        if m:
            quoted_name, plain_name, scope = m.groups()
            cur_obj = {
                'quoted_name': quoted_name,
                'plain_name': plain_name,
                'scope': scope,
                'body': [],
            }
            i += 1
            continue

        if ENDOBJ_RE.match(s):
            if cur_obj is not None:
                objects.append(cur_obj)
            cur_obj = None
            i += 1
            continue

        hm = HIDDEN_RE.match(s)
        if hm:
            hidden_names.add(hm.group(1))
            i += 1
            continue

        if cur_obj is None:
            # comment lines ("# .rodata:0x.. | ..."), blank, etc - skip.
            # BUT dtk sometimes emits bare padding directives BETWEEN
            # .obj/.endobj blocks (e.g. ".byte 0x00, 0x00, 0x00" as
            # alignment padding after a .string whose own declared size
            # didn't include it) - these are NOT wrapped in their own
            # .obj at all. Silently skipping them (the original bug here)
            # drops real bytes and shifts everything after by that many
            # bytes - caught via build+diff on the first large landing,
            # not by inspection alone. Any orphan raw-content line becomes
            # its own anonymous (no .global/no label) entry.
            if s.startswith(('.byte ', '.2byte ', '.4byte ', '.string ', '.ascii ', '.float ', '.double ', '.skip ')):
                objects.append({'quoted_name': None, 'plain_name': None, 'scope': None, 'body': [('raw', s)]})
            i += 1
            continue

        # --- inside an .obj/.endobj body ---
        relm = REL_RE.match(s)
        if relm:
            target, label = relm.groups()
            cur_obj['body'].append(('rel', target, label))
            i += 1
            continue

        llm = LOCAL_LABEL_RE.match(s)
        if llm:
            cur_obj['body'].append(('label', llm.group(1)))
            i += 1
            continue

        fm = FLOAT_RE.match(s)
        if fm:
            hexval = float_to_hex(fm.group(1))
            cur_obj['body'].append(('raw', f'.4byte 0x{hexval} # .float {fm.group(1)}'))
            i += 1
            continue

        dm = DOUBLE_RE.match(s)
        if dm:
            hi, lo = double_to_hex_words(dm.group(1))
            cur_obj['body'].append(('raw', f'.4byte 0x{hi} # .double {dm.group(1)} (hi)'))
            cur_obj['body'].append(('raw', f'.4byte 0x{lo} # .double {dm.group(1)} (lo)'))
            i += 1
            continue

        # .string "...", .ascii "...", .skip N, .2byte/.4byte/.byte VALUE -
        # all pass through verbatim, GNU AS understands them directly.
        cur_obj['body'].append(('raw', s))
        i += 1

    # Determine which names need the quoted "@name" form (global + quoted in
    # the source dump - other TUs reference them that way).
    global_quoted_names = {o['quoted_name'] for o in objects if o['quoted_name'] and o['scope'] == 'global'}

    def emit_name(quoted_name, plain_name):
        if quoted_name:
            return f'"@{quoted_name}"'
        return plain_name

    def obj_name(o):
        return o['quoted_name'] if o['quoted_name'] else o['plain_name']

    out.append(section_header or '.data')
    out.append(balign or '.balign 4')
    for o in objects:
        if o['plain_name'] is None and o['quoted_name'] is None:
            continue  # orphan padding, no symbol
        label = emit_name(o['quoted_name'], o['plain_name'])
        out.append(f'.global {label}')
        name = obj_name(o)
        if name in hidden_names:
            out.append(f'.hidden {label}')
    out.append('')

    for o in objects:
        if o['plain_name'] is None and o['quoted_name'] is None:
            pass  # orphan padding, no label emitted
        else:
            label = emit_name(o['quoted_name'], o['plain_name'])
            out.append(f'{label}:')
        for item in o['body']:
            if item[0] == 'label':
                out.append(item[1][1:] + ':')
            elif item[0] == 'rel':
                _, target, label_name = item
                target_addr = symbol_address(target)
                label_addr = int(label_name[3:], 16)  # .L_XXXXXXXX
                if target_addr is not None:
                    offset = label_addr - target_addr
                    if offset == 0:
                        out.append(f'    .4byte {target} # .rel {target}, {label_name}')
                    else:
                        out.append(f'    .4byte {target}+0x{offset:X} # .rel {target}, {label_name}')
                else:
                    out.append(f'    .4byte {target} # .rel {target}, {label_name} '
                                f'(WARNING: {target} not in symbols.txt, offset-0 UNVERIFIED)')
                out.append(label_name[1:] + ':')
            elif item[0] == 'raw':
                out.append('    ' + item[1])
        out.append('')

    open(out_path, 'w').write('\n'.join(out) + '\n')
    print(f'Wrote {out_path}: {len(objects)} objects')
    rel_items = [item for o in objects for item in o['body'] if item[0] == 'rel']
    if rel_items:
        unresolved = sum(1 for _, target, _ in rel_items if symbol_address(target) is None)
        print(f'  .rel occurrence(s): {len(rel_items)} ({unresolved} with unresolved target - verify those specifically)')


if __name__ == '__main__':
    convert(sys.argv[1], sys.argv[2])
