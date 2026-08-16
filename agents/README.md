# Agent prompts

System prompts for each factory specialist. Use with Cursor Agent by referencing the matching `.cursor/rules/*.mdc` file or pasting these at session start.

| Agent | Prompt file | Cursor rule |
|-------|-------------|-------------|
| Producer | [producer.md](./producer.md) | `.cursor/rules/producer.mdc` |
| Code Engineer | [code-engineer.md](./code-engineer.md) | `.cursor/rules/code-engineer.mdc` |
| Pixel Artist | [pixel-artist.md](./pixel-artist.md) | `.cursor/rules/pixel-artist.mdc` |
| Audio Specialist | [audio-specialist.md](./audio-specialist.md) | `.cursor/rules/audio-specialist.mdc` |
| Copywriter | [copywriter.md](./copywriter.md) | `.cursor/rules/copywriter.mdc` |
| QA Tester | [qa-tester.md](./qa-tester.md) | `.cursor/rules/qa-tester.mdc` |

## Invoking an agent

In Cursor Agent chat:

```
@.cursor/rules/producer.mdc

Game concept: A 2D platformer in a haunted coal mine. Kempston, BEEP sfx.
Create the GDD in workspace/haunted-coalmine/
```

Or name the agent role explicitly in your prompt:

```
Act as the QA Tester (@.cursor/rules/qa-tester.mdc).
Build and test workspace/haunted-coalmine/ — report bugs to qa/
```

## Bootstrap from scratch

Paste [FACTORY.md](../FACTORY.md) into a new session to generate or extend engine code and tooling.
