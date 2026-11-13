#!/usr/bin/env bash
# decompile_ddx.sh - run m2c over the extracted DDX assembly.
# Usage: decompile_ddx.sh all | MODULE/GROUP     (e.g. crime/abc)
# A reader-written ctx.c beside this script (struct and prototype
# definitions) is passed to m2c when present.
set -eo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"

M2C="python3 ${ROOT_DIR}/m2c/m2c.py -t mipsn32"
[ -f "${SCRIPT_DIR}/ctx.c" ] && M2C="$M2C --context ${SCRIPT_DIR}/ctx.c"

decompile() {
    local f="$1" rel
    rel="${f#${SCRIPT_DIR}/asm/}"
    local out="${SCRIPT_DIR}/decomp/${rel%.s}.c"
    mkdir -p "$(dirname "$out")"
    echo "[*] Decompiling $f -> $out ..."
    $M2C "$f" > "$out" 2>&1 || true
    echo "[+] Done: $out ($(wc -l < "$out") lines)"
}

if [ $# -eq 0 ] || [ "$1" == "all" ]; then
    for f in "${SCRIPT_DIR}"/asm/*/*/*.s; do decompile "$f"; done
    exit 0
fi

f="${SCRIPT_DIR}/asm/$1/$(basename "$1").s"
[ -f "$f" ] || { echo "[-] File not found: $f"; exit 1; }
decompile "$f"
