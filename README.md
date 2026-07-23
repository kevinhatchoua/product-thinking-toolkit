# awesome-product-thinking-skills

Expert-level **evaluation skills** for AI coding assistants — **Cursor**, **Claude Code**, and custom agents — that review product decisions across UX, ethics, systems thinking, and strategy.

> Depth over brevity. These skills reject vague advice (“make it user-friendly”) in favor of precise criteria, mental models, risk assessment, and actionable remediation.

## Dual compatibility

| Asset | Cursor | Claude Code |
|-------|--------|-------------|
| `skills/*/SKILL.md` | Agent Skills (`.cursor/skills/`) | Skills (`.claude/skills/`) |
| `rules/*.mdc` | Project Rules (`.cursor/rules/`) | Optional — Claude uses skills; rules still useful if you bridge tools |
| `AGENTS.md` | Agent discovery | Agent discovery |
| `scripts/install.sh` | Installs skills + rules | Installs skills |

Every `SKILL.md` uses shared YAML frontmatter (`name`, `description`) accepted by both hosts. Rules resolve the skill from `.cursor/skills/`, `.claude/skills/`, or this repo’s `skills/`.

## Quick install

```bash
git clone https://github.com/kevinhatchoua/awesome-product-thinking-skills.git
cd awesome-product-thinking-skills
chmod +x scripts/install.sh

# Into your app (Cursor + Claude Code, project-local)
./scripts/install.sh all project /path/to/your-app

# Or user-global
./scripts/install.sh cursor user
./scripts/install.sh claude user
```

Then in chat:

```text
Use the dark-pattern-review skill on this checkout flow.
Run accessibility-review on the AI Insights drawer.
```

## Repository layout

```text
awesome-product-thinking-skills/
├── AGENTS.md                      # How agents should load skills
├── README.md
├── LICENSE                        # MIT
├── CONTRIBUTING.md
├── scripts/install.sh             # Cursor + Claude installer
├── templates/SKILL_TEMPLATE.md
├── rules/                         # Cursor .mdc adapters (dual path loaders)
└── skills/
    ├── dark-pattern-review/
    ├── ux-heuristic-review/
    ├── ai-transparency-review/
    ├── cognitive-bias-review/
    ├── jobs-to-be-done-review/
    ├── decision-quality-review/
    └── accessibility-review/
```

Each skill directory:

| File | Role |
|------|------|
| `SKILL.md` | Canonical skill (Cursor + Claude frontmatter) |
| `checklist.md` | Fast operational checklist |
| `examples.md` | Additional worked scenarios |

## Skills (shipped)

### Phase 1 — Ethics, UX, AI trust

| Skill | Evaluates |
|-------|-----------|
| [`dark-pattern-review`](./skills/dark-pattern-review/) | Deceptive design, coercion, consent quality, asymmetric friction |
| [`ux-heuristic-review`](./skills/ux-heuristic-review/) | NNg 10 heuristics + Enterprise SaaS / complex workflows |
| [`ai-transparency-review`](./skills/ai-transparency-review/) | Microsoft RAI + NIST AI RMF lenses, trust calibration, recovery |

### Phase 2 — Judgment, strategy, inclusion

| Skill | Evaluates |
|-------|-----------|
| [`cognitive-bias-review`](./skills/cognitive-bias-review/) | Confirmation, sunk cost, automation bias, optimism bias |
| [`jobs-to-be-done-review`](./skills/jobs-to-be-done-review/) | Situation, trigger, functional/emotional/social jobs, barriers |
| [`decision-quality-review`](./skills/decision-quality-review/) | Assumptions, evidence grade, reversibility, opportunity cost |
| [`accessibility-review`](./skills/accessibility-review/) | WCAG 2.2 AA/AAA intent, focus, screen readers, cognitive load |

## Manual install (if you prefer)

**Cursor — project skills**

```bash
mkdir -p .cursor/skills .cursor/rules
cp -R /path/to/awesome-product-thinking-skills/skills/* .cursor/skills/
cp /path/to/awesome-product-thinking-skills/rules/*.mdc .cursor/rules/
```

**Claude Code — project skills**

```bash
mkdir -p .claude/skills
cp -R /path/to/awesome-product-thinking-skills/skills/* .claude/skills/
```

**System prompt / custom agent** — paste the body of any `SKILL.md` (YAML frontmatter optional). Keep the **Output Schema**.

## Usage examples

```text
Apply dark-pattern-review to the pricing page and cancel flow in this PR.
Use ux-heuristic-review on the multi-step cluster create wizard.
Run ai-transparency-review on the AI rewrite feature.
Use cognitive-bias-review on the Cost & Reliability dashboard and Autopilot.
Run jobs-to-be-done-review on this AI Ops Assistant PRD.
Apply decision-quality-review to the Autopilot GA decision.
Use accessibility-review on the cloud ops dashboard and AI Insights drawer.
```

## Skill quality bar

Follow [`templates/SKILL_TEMPLATE.md`](./templates/SKILL_TEMPLATE.md): Purpose → Persona → Framework → Questions → Rubric (1–5) → Output Schema → Concrete Example. Supporting `checklist.md` + `examples.md` required. Dual path loaders required in any new `.mdc` rule.

## Phase 3 (next)

- `systems-thinking-review`
- `pricing-value-ethics-review`
- `trust-safety-review`
- `metric-goodhart-review`
- `accessibility-equity-review`

## License

[MIT](./LICENSE)
