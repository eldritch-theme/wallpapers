#!/usr/bin/env bash

set -euo pipefail

WALLPAPER_DIR="$(pwd)/wallpaper"

if [ ! -d "$WALLPAPER_DIR" ]; then
  echo "Error: Directory '$WALLPAPER_DIR' not found." >&2
  exit 1
fi

if ! command -v oxipng &> /dev/null; then
  echo "Error: oxipng is not installed or not in PATH." >&2
  exit 1
fi

echo "Optimizing PNGs in: $WALLPAPER_DIR"

oxipng --opt max --recursive "$WALLPAPER_DIR"

echo "Done."
