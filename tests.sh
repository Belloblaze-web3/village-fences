#!/usr/bin/env bash
set -euo pipefail

root=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

run_case() {
    local input="$1"
    local expected="$2"
    local actual
    actual=$(printf '%s' "$input" | "$root/solution.sh")
    [[ "$actual" == "$expected" ]] || {
        printf 'FAIL\nInput:\n%s\nExpected:\n%s\nActual:\n%s\n' "$input" "$expected" "$actual" >&2
        exit 1
    }
}

run_case $'5\nH...H\n' $'YES\nHBBBH'
run_case $'3\nHH.\n' 'NO'
run_case $'1\n.\n' $'YES\nB'
run_case $'7\nH.H.H.H\n' $'YES\nHBHBHBH'

printf 'All Village Fences tests passed.\n'
