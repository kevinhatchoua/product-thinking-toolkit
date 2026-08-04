# product-thinking-toolkit

A focused **toolkit of product-thinking evaluation skills** for AI coding assistants (**Cursor**, **Claude Code**, and custom agents).

Use these skills to review product decisions for **deceptive patterns**, **cognitive bias**, **accessibility**, and **UX design heuristics** — with precise criteria, not vague advice.

> Formerly `awesome-product-thinking-skills`. Renamed for clarity (Yahav / UXD feedback).

## Skills (canonical set)

| Skill | Source | Evaluates |
|-------|--------|-----------|
| [`deceptive-pattern-review`](./skills/deceptive-pattern-review/) | This toolkit | Deceptive design, coercion, consent quality, asymmetric friction *(formerly “dark patterns”)* |
| [`cognitive-bias-review`](./skills/cognitive-bias-review/) | This toolkit | Confirmation, sunk cost, automation bias, optimism bias |
| [`accessibility-review`](./skills/accessibility-review/) | This toolkit | WCAG 2.2 AA/AAA intent, focus, screen readers, cognitive load |
| [`uxd-evaluate-design-heuristics`](./skills/uxd-evaluate-design-heuristics/) | [rh-uxd/ai-helpers](https://github.com/rh-uxd/ai-helpers) | Visual hierarchy, accessibility, content, state coverage (design critique) |

## Dual compatibility

| Asset | Cursor | Claude Code |
|-------|--------|-------------|
| `skills/*/SKILL.md` | `.cursor/skills/` | `.claude/skills/` |
| `rules/*.mdc` | `.cursor/rules/` | Optional |
| `AGENTS.md` | Agent discovery | Agent discovery |
| `scripts/install.sh` | Skills + rules | Skills |

## Quick install

```bash
git clone https://github.com/kevinhatchoua/product-thinking-toolkit.git
cd product-thinking-toolkit
chmod +x scripts/install.sh

# Into your app (Cursor + Claude Code)
./scripts/install.sh all project /path/to/your-app

# Or user-global
./scripts/install.sh cursor user
./scripts/install.sh claude user
```

Invoke:

```text
Use the deceptive-pattern-review skill on this checkout flow.
Run cognitive-bias-review on the Autopilot dashboard.
Use accessibility-review on the AI Insights drawer.
Run uxd-evaluate-design-heuristics on these screenshots.
```

## Repository layout

```text
product-thinking-toolkit/
├── AGENTS.md
├── README.md
├── LICENSE
├── CONTRIBUTING.md
├── scripts/install.sh
├── templates/SKILL_TEMPLATE.md
├── rules/                          # Cursor .mdc adapters
└── skills/
    ├── deceptive-pattern-review/
    ├── cognitive-bias-review/
    ├── accessibility-review/
    └── uxd-evaluate-design-heuristics/   # vendored from rh-uxd/ai-helpers
```

## Why this set

Scoped to high-leverage, ship-blocking reviews teams actually run in UI/PR critique:

1. **Deceptive patterns** — trust, consent, cancel/subscribe fairness  
2. **Cognitive bias** — over-reliance, sunk cost, optimism in AI/ops surfaces  
3. **Accessibility** — WCAG-oriented task blockers  
4. **UXD design heuristics** — shared Red Hat UXD scoring skill (public GitHub)

Intentionally **not** included (for now): JTBD, decision-quality, AI transparency, and the older homemade `ux-heuristic-review` (replaced by the upstream UXD skill).

## Upstream heuristics

`uxd-evaluate-design-heuristics` is vendored from:

https://github.com/rh-uxd/ai-helpers/tree/main/plugins/uxd-workshop/skills/uxd-evaluate-design-heuristics

See [`skills/uxd-evaluate-design-heuristics/SOURCE.md`](./skills/uxd-evaluate-design-heuristics/SOURCE.md).

## License

[MIT](./LICENSE) for toolkit-authored skills and docs.

The vendored UXD heuristics skill remains under the upstream [Apache-2.0](https://github.com/rh-uxd/ai-helpers/blob/main/LICENSE) license terms of `rh-uxd/ai-helpers`.
