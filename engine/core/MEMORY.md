# ZX Spectrum 48K memory map (reference)

Use this when allocating RAM for game variables, buffers, and code.

## Key addresses

| Region | Start | End | Size | Notes |
|--------|-------|-----|------|-------|
| ROM | `$0000` | `$3FFF` | 16K | Do not write |
| Screen bitmap | `$4000` | `$57FF` | 6144 | Pixel data |
| Screen attributes | `$5800` | `$5AFF` | 768 | INK/PAPER per 8×8 |
| System vars | `$5C00` | `$5CB5` | — | DOS / BASIC vars — avoid |
| RAM (usable) | `$5CC0` | `$FFFF` | ~22K | Code + data (48K machine) |

## Screen layout

- Resolution: **256×192** pixels
- Attributes: **32×24** cells of 8×8
- Each attribute byte: FLASH/BRIGHT/PAPER/INK (see Spectrum technical manual)

## Game project budget

Producer should create `workspace/<game-slug>/MEMORY-BUDGET.md`:

```markdown
| Region | Size | Owner |
|--------|------|-------|
| Code | 12K | Code Engineer |
| Sprite tables | 2K | gfx |
| Level map | 4K | game |
| Stack | 256B | core |
```

## 128K (future)

Bank switching and second RAM bank — document separately; not required for initial 48K factory acceptance.

## References

- [Spectrum memory map](https://worldofspectrum.org/faq/reference/128kreference.htm)
- Attribute clash: one INK + one PAPER per 8×8 cell only
