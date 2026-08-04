# Agent instructions — product-thinking-toolkit

Focused library of **product-thinking evaluation skills** for Cursor, Claude Code, and custom agents.

## How to load skills

| Host | Skills path | Rules path |
|------|-------------|------------|
| **Cursor** | `.cursor/skills/<name>/SKILL.md` | `.cursor/rules/<name>.mdc` |
| **Claude Code** | `.claude/skills/<name>/SKILL.md` | N/A (use skills) |
| **This repo** | `skills/<name>/SKILL.md` | `rules/<name>.mdc` |

```bash
./scripts/install.sh all project .
```

## Available skills

- `deceptive-pattern-review` — deceptive / dark patterns, consent, asymmetric friction
- `cognitive-bias-review` — confirmation, sunk cost, automation, optimism bias
- `accessibility-review` — WCAG 2.2, focus, screen readers, cognitive load
- `uxd-evaluate-design-heuristics` — UXD design critique rubric (from rh-uxd/ai-helpers)

## Invocation

When the user asks for a matching review, **read that skill’s `SKILL.md` first**, then follow its framework and output schema exactly.

Do not invent metrics, legal conclusions, or WCAG criterion numbers. Prefer evidence from the artifacts under review.
