#!/usr/bin/env bash
# build.sh — ZX Spectrum Game Factory build entry point (stub)
# Usage: ./tools/build.sh workspace/<game-slug>
#
# Wire to z88dk, sjasmplus, or Boriel ZX Basic when ready.
# QA agent: run this script and verify output in workspace/<slug>/build/

set -euo pipefail

GAME_PATH="${1:-}"

if [[ -z "$GAME_PATH" ]]; then
  echo "Usage: $0 workspace/<game-slug>" >&2
  exit 1
fi

if [[ ! -d "$GAME_PATH" ]]; then
  echo "Error: game path not found: $GAME_PATH" >&2
  exit 1
fi

SLUG="$(basename "$GAME_PATH")"
BUILD_DIR="$GAME_PATH/build"
mkdir -p "$BUILD_DIR"

echo "==> ZX Spectrum Game Factory build"
echo "    Game: $SLUG"
echo "    Output: $BUILD_DIR/"
echo ""
echo "STUB: No toolchain configured yet."
echo ""
echo "Next steps for Code Engineer:"
echo "  1. Add Makefile or z88dk project under $GAME_PATH/"
echo "  2. Link engine/ blocks from engine/core, engine/gfx, etc."
echo "  3. Emit $BUILD_DIR/${SLUG}.tap"
echo ""
echo "See tools/README.md and FACTORY.md acceptance criteria."

exit 0
