import sys, re

def dedup_concat(resolved_files, out_path):
    """Concatenate resolved dump files, but only emit each distinct
    extab/extabindex .obj block and .text .fn/.endfn block ONCE (first
    occurrence in file order), since some address ranges have multiple
    overlapping/duplicate dtk dump files covering the same functions."""
    seen_fn = set()
    seen_obj = set()
    seen_sym = set()
    out_lines = []
    header_written = False

    for fpath in resolved_files:
        lines = open(fpath, encoding="utf-8").read().split("\n")
        i = 0
        n = len(lines)
        if not header_written:
            out_lines.append('.include "macros.inc"')
            out_lines.append(f'.file "dedup_concat"')
            out_lines.append("")
            header_written = True
        while i < n:
            line = lines[i]
            # extab/extabindex object block
            m = re.match(r'^# (extab|extabindex):0x[0-9A-Fa-f]+ \| (0x[0-9A-Fa-f]+) \| size: (0x[0-9A-Fa-f]+)$', line)
            if m:
                block = [line]
                i += 1
                obj_name = None
                while i < n and not lines[i].strip().startswith(".endobj"):
                    block.append(lines[i])
                    om = re.search(r'"@(\w+)"', lines[i])
                    if om and obj_name is None:
                        obj_name = om.group(1)
                    i += 1
                if i < n:
                    block.append(lines[i])
                    i += 1
                if obj_name and obj_name not in seen_obj:
                    seen_obj.add(obj_name)
                    out_lines.extend(block)
                continue
            # section headers, .balign etc - only emit once per section transition,
            # but simplest safe approach: always emit these (harmless if repeated)
            if line.strip().startswith(".section ") or line.strip() == ".balign 4" or line.strip() == ".text":
                out_lines.append(line)
                i += 1
                continue
            # function block
            m2 = re.match(r'^# \.text:0x[0-9A-Fa-f]+ \| (0x[0-9A-Fa-f]+) \| size: (0x[0-9A-Fa-f]+)$', line)
            if m2:
                header = line
                i += 1
                fnline = lines[i] if i < n else ""
                fm = re.match(r'^\.fn (\S+), (?:global|weak|local)$', fnline)
                if fm:
                    name = fm.group(1)
                    block = [header, fnline]
                    i += 1
                    while i < n and not lines[i].strip().startswith(".endfn"):
                        block.append(lines[i])
                        i += 1
                    if i < n:
                        block.append(lines[i])
                        i += 1
                    if name not in seen_fn:
                        seen_fn.add(name)
                        out_lines.extend(block)
                    continue
                # A size:0x0 header not followed by .fn is a bare boundary
                # marker (.sym NAME, scope) - dtk emits these between
                # .fn/.endfn blocks for zero-size symbols like
                # gTRKInterruptVectorTable/__OSDBINTSTART. Falling through to
                # the generic "i += 1" below would silently drop the .sym
                # line itself (the header's own i+=1 already consumed one
                # line, so the trailing i+=1 skips past the .sym line
                # unread) - this WAS a real bug, caught via 8003F960 missing
                # __OSDBINTSTART/etc after asm_transcribe_gnuas.py's matching
                # .sym fix. Emit header+sym explicitly instead.
                sm = re.match(r'^\.sym (\S+), (?:global|weak|local)$', fnline)
                if sm:
                    name = sm.group(1)
                    if name not in seen_sym:
                        seen_sym.add(name)
                        out_lines.append(header)
                        out_lines.append(fnline)
                    continue
            i += 1

    open(out_path, "w", encoding="utf-8").write("\n".join(out_lines) + "\n")
    print(f"Wrote {out_path}: {len(seen_fn)} unique functions, {len(seen_obj)} unique extab objects")

if __name__ == "__main__":
    resolved = sys.argv[1:-1]
    out = sys.argv[-1]
    dedup_concat(resolved, out)
