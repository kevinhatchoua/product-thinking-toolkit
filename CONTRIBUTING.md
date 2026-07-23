# Contributing

Thanks for helping grow **awesome-product-thinking-skills**.

## Add a new skill (Phase 2+)

1. Copy the blueprint:
   ```bash
   cp templates/SKILL_TEMPLATE.md skills/<skill-name>/SKILL.md
   ```
2. Create siblings:
   - `skills/<skill-name>/checklist.md`
   - `skills/<skill-name>/examples.md`
3. Fill every required `SKILL.md` section (Purpose → Concrete Example). Depth over brevity.
4. Add a Cursor adapter at `rules/<skill-name>.mdc` with YAML `description`, optional `globs`, and `alwaysApply: false` unless the skill should always run.
5. Link the skill in `README.md` (table + Phase notes).
6. Open a PR with a conventional commit, e.g. `feat: add jobs-to-be-done-review skill`.

## Quality bar

| Requirement | Bar |
|-------------|-----|
| Criteria | Precise, falsifiable, evidence-seeking |
| Rubric | 1–5 with dimension anchors; safety dims use **min** not average |
| Example | Full structured output, not a stub |
| Dual format | Works as Skill (`SKILL.md`) and Rule (`.mdc`) |
| Citations | Do not invent research metrics or legal conclusions |

## Phase 3 skill backlog (suggested)

| Skill | Focus |
|-------|-------|
| `systems-thinking-review` | Second-order effects, feedback loops, ops load |
| `pricing-value-ethics-review` | Value communication, lock-in, fairness |
| `trust-safety-review` | Abuse, misuse, vulnerable users |
| `metric-goodhart-review` | Vanity metrics, perverse incentives |
| `accessibility-equity-review` | Equity of use beyond WCAG compliance checklists |

## Dual host requirements

New skills must work on **Cursor** and **Claude Code** without host-specific forks:

1. Valid `SKILL.md` YAML: `name` + `description` (third person, trigger terms).
2. Matching `rules/<name>.mdc` with dual load paths (`.cursor/skills` → `.claude/skills` → `skills/`).
3. Installable via `./scripts/install.sh`.

## Local install smoke test

```bash
./scripts/install.sh all project /path/to/your-app
# or user-global:
./scripts/install.sh claude user
./scripts/install.sh cursor user
```

Then in chat: `Use the dark-pattern-review skill on <artifact>.`
