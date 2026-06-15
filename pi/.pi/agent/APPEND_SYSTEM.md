always make your responses clear & very concise

when dispatching a task to another agent (e.g. cmux pane), always poll to verify it actually did the task. scale the `sleep X` to task difficulty (don't hard-code 20): ~3s for simple instructions, ~10s for medium tasks, 20s+ for big changes / large refactors / full app builds.

when sending prompts to other Pi Agents, do not use long `sleep x` intervals like `sleep 12` — instead assume the Pi agent will respond quickly and just do `sleep 2` or `sleep 3`.

# Pi Agent Docs

- `SYSTEM.md` (`.pi/SYSTEM.md` per-project or `~/.pi/agent/SYSTEM.md` global) fully REPLACES Pi's default system prompt. Context files (AGENTS.md) + skills are still appended on top.
- `APPEND_SYSTEM.md` only ADDS to Pi's defaults instead of replacing them. Use this when you just want extra instructions.
- When anything needs to be added/updated in the Pi Agent system prompt, always edit THIS file (`APPEND_SYSTEM.md`) — never `SYSTEM.md`.
