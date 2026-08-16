# Graphics engine blocks

Tilemap renderer, sprite engines (XOR / masked / flicker-free), collision helpers.

## Planned modules

| File | Purpose |
|------|---------|
| `sprite-xor.asm` | XOR sprite plot for fast transparent blits |
| `tilemap.asm` | 8×8 tile background scroll |
| `collision.asm` | Tile and sprite bounding-box checks |

## Attribute clash

Document per-screen colour plan in Pixel Artist's `ATLAS.md`. Engine cannot fix clash — art must.

## Status

**Stub.** See `sprite-xor.asm` for starting point.
