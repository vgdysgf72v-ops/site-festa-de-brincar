#!/usr/bin/env bash
set -euo pipefail
ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
mkdir -p "$ROOT_DIR/public/site-photos"
for archive in "$ROOT_DIR"/assets/*.tar.gz; do
  [ -f "$archive" ] || continue
  tar -xzf "$archive" -C "$ROOT_DIR"
done
