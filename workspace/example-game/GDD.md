# Example Game (template)

Replace this stub with your game title. Delete this file when GDD is written.

## Concept

_Template project for the ZX Spectrum Game Factory. Copy this folder to start a new game._

Example: A minimal title screen that waits for a key press, then shows "GAME OVER".

## Mechanics

- Single screen demo
- Any key to start
- Placeholder loop

## Controls

| Input | Action |
|-------|--------|
| Any key | Start / restart |

## Technical

- Target: 48K
- Engine blocks: `engine/core/game-states.asm`
- Build: `./tools/build.sh workspace/example-game`

## Acceptance criteria

- [ ] Builds to `build/example-game.tap`
- [ ] Boots in emulator
- [ ] Title screen visible
