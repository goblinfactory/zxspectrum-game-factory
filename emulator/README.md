# Emulator integration

Run and test builds from `workspace/<game-slug>/build/`.

## Recommended emulators

| Emulator | Platform | Notes |
|----------|----------|-------|
| [Fuse](https://fuse-emulator.sourceforge.net/) | Linux/macOS/Windows | Accurate, CLI-friendly |
| [ZEsarUX](https://github.com/chernandezba/zesarux) | Cross-platform | Good debugger |
| [JSSpectrum](https://github.com/ColinPitrat/JSSpectrum) | Browser | Quick visual check |

## Quick test (Fuse example)

```bash
# After build produces game.tap
fuse workspace/<game-slug>/build/<game-slug>.tap
```

## QA workflow

1. `./tools/build.sh workspace/<game-slug>`
2. Launch emulator with output `.tap` or `.z80`
3. Verify: boots → title → gameplay → no crash in 60s
4. Log bugs to `workspace/<game-slug>/qa/`

## Headless / CI (future)

Document fuse `--silent` or zesarux batch mode for automated QA agent runs.

## Web wrapper (future)

Optional `emulator/web/` — embed JSSpectrum for one-click browser test.
