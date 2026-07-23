# Agent instructions — awesome-product-thinking-skills

This repository is a **library of evaluation skills** for product/UX/ethics reviews. Use it from Cursor, Claude Code, or any agent that can load `SKILL.md` files.

## How to load skills

| Host | Skills path | Rules path |
|------|-------------|------------|
| **Cursor** | `.cursor/skills/<name>/SKILL.md` or `~/.cursor/skills/<name>/SKILL.md` | `.cursor/rules/<name>.mdc` |
| **Claude Code** | `.claude/skills/<name>/SKILL.md` or `~/.claude/skills/<name>/SKILL.md` | N/A (use skills) |
| **This repo (dev)** | `skills/<name>/SKILL.md` | `rules/<name>.mdc` |

Install with:

```bash
./scripts/install.sh all project .
# or: ./scripts/install.sh claude user
# or: ./scripts/install.sh cursor user
```

## Available skills

- `dark-pattern-review` — deceptive design, consent, asymmetric friction
- `ux-heuristic-review` — NNg 10 + enterprise workflow heuristics
- `ai-transparency-review` — AI disclosure, trust calibration, HITL, NIST/MS RAI lenses
- `cognitive-bias-review` — confirmation, sunk cost, automation, optimism bias
- `jobs-to-be-done-review` — situation, trigger, job layers, barriers
- `decision-quality-review` — assumptions, evidence, reversibility, opportunity cost
- `accessibility-review` — WCAG 2.2, focus, screen readers, cognitive load

## Invocation

When the user asks for a review matching a skill, **read that skill’s `SKILL.md` first**, then follow its Step-by-Step Framework and **Output Schema** exactly. Use `checklist.md` for pass/fail speed; use `examples.md` for calibration.

Do not invent metrics, legal conclusions, or WCAG criterion numbers. Prefer evidence from the artifacts under review.
