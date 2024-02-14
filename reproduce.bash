#!/bin/bash
set -o errexit -o pipefail -o nounset
cd "$(dirname "$0")"

echo 'Reproducing...' >&2
pretty-exec -- pd install --ignore-scripts
pretty-exec -- bash -c 'ls node_modules/.pnpm | grep cpu-features'
pretty-exec -- cp would-be-pnpmfile.cjs .pnpmfile.cjs
pretty-exec -- pd install --ignore-scripts
pretty-exec -- bash -c 'ls node_modules/.pnpm | grep cpu-features'
