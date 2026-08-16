# Input engine blocks

Keyboard, Kempston, and Sinclair joystick interfaces.

## Key mappings (default)

Document overrides per game in GDD.

| Key | Action (example) |
|-----|------------------|
| O / P | Left / Right |
| Q / A / SPACE | Up variants / Jump |
| Kempston | Standard port `$1F` bit map |

## Planned modules

| File | Purpose |
|------|---------|
| `keyboard.asm` | Row scan, debounce |
| `kempston.asm` | Joystick read |
| `input-merge.asm` | Unified direction + fire flags |

## Status

**Stub.**
