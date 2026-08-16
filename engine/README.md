# Engine library

Reusable **Lego blocks** for ZX Spectrum games. The Code Engineer assembles these; do not duplicate per game.

## Modules

| Directory | Purpose |
|-----------|---------|
| [core/](./core/) | Game loop, screen states, interrupts, memory layout |
| [gfx/](./gfx/) | Tilemap, sprites (XOR/masked), collision helpers |
| [audio/](./audio/) | BEEP and AY-3-8910 drivers |
| [input/](./input/) | Keyboard, Kempston, Sinclair joystick |

## Design rules

1. **48K compatible by default** — 128K features behind compile flags
2. **Document RAM usage** per module in module README
3. **No game-specific logic** — that lives in `workspace/<game-slug>/`
4. **Stable API** — changing a block's interface requires updating all consumers

## Bootstrap

Paste [FACTORY.md](../FACTORY.md) into Cursor and ask the Code Engineer to implement initial blocks. Start with `engine/core/game-states.asm` and `engine/gfx/sprite-xor.asm`.
