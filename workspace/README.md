# Game workspace

One subdirectory per game project. The Producer creates the slug folder after the Game Designer approves the concept.

## Create a new game

```
workspace/
└── <game-slug>/
    ├── GDD.md              Producer
    ├── TASKS.md              Producer
    ├── MEMORY-BUDGET.md      Producer (optional)
    ├── assets/
    │   ├── sprites/          Pixel Artist
    │   ├── tiles/
    │   ├── loading/
    │   └── audio/            Audio Specialist
    ├── src/                  Code Engineer
    ├── text/                 Copywriter
    ├── manual/               Copywriter
    ├── qa/                   QA Tester
    └── build/                Generated .tap / .z80 (gitignored)
```

## Example slug

`haunted-coalmine` — from GDD prompt: *"2D platformer in a haunted coal mine"*

## Template

Copy [example-game/](./example-game/) to start:

```bash
cp -r workspace/example-game workspace/my-new-game
# Edit GDD.md, then run Producer agent to refine
```
