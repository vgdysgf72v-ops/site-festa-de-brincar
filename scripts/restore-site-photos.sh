#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
ARCHIVE="$ROOT_DIR/assets/site-festa-fotos.tar.gz"

[ -f "$ARCHIVE" ] || exit 0

mkdir -p "$ROOT_DIR"
tar -xzf "$ARCHIVE" -C "$ROOT_DIR"

mkdir -p "$ROOT_DIR/assets/uploads"
if [ -d "$ROOT_DIR/public/site-photos" ]; then
  cp -f "$ROOT_DIR"/public/site-photos/* "$ROOT_DIR/assets/uploads/" || true
fi
