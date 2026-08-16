# Core engine blocks

Game loop, screen state machine, interrupts, stack setup.

## Planned modules

| File | Purpose |
|------|---------|
| `game-states.asm` | Title → Game → Game Over state machine |
| `interrupts.asm` | IM2 or standard interrupt hook for music/frame sync |
| `init.asm` | Stack pointer, clear RAM, disable interrupts on boot |

## Screen states

1. **Title** — wait for key, play title music optional
2. **Game** — main loop
3. **Game Over** — score, restart option

Implement as jump table or case dispatch — keep under 256 bytes for stub.

## Status

**Stub.** Ask Code Engineer (or paste FACTORY.md) to implement first working `init.asm` + `game-states.asm`.
