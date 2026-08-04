# Contributing

Thanks for helping grow **product-thinking-toolkit**.

## Scope

Keep the toolkit focused. Canonical skills:

1. `deceptive-pattern-review`
2. `cognitive-bias-review`
3. `accessibility-review`
4. `uxd-evaluate-design-heuristics` (vendored from [rh-uxd/ai-helpers](https://github.com/rh-uxd/ai-helpers) — prefer upstream PRs there)

New skills need a clear reason they belong in this focused set (not a general product-management encyclopedia).

## Add or update a toolkit-owned skill

1. Copy `templates/SKILL_TEMPLATE.md` → `skills/<name>/SKILL.md`
2. Add `checklist.md` + `examples.md`
3. Add `rules/<name>.mdc` with dual load paths
4. Update `README.md` + `AGENTS.md`
5. Ensure `./scripts/install.sh` still copies all skills

## Refresh the UXD heuristics skill from upstream

```bash
mkdir -p skills/uxd-evaluate-design-heuristics/references
for f in SKILL.md references/evaluation-rubric.md references/report-template.md; do
  gh api "repos/rh-uxd/ai-helpers/contents/plugins/uxd-workshop/skills/uxd-evaluate-design-heuristics/$f" \
    --jq .content | base64 -d > "skills/uxd-evaluate-design-heuristics/$f"
done
```

## Quality bar

| Requirement | Bar |
|-------------|-----|
| Criteria | Precise, falsifiable, evidence-seeking |
| Rubric | Clear scores; safety dims use **min** not average where applicable |
| Example | Full structured output for toolkit-authored skills |
| Dual format | Works as Skill (`SKILL.md`) and Rule (`.mdc`) |
| Citations | Do not invent research metrics or legal conclusions |

## Local install smoke test

```bash
./scripts/install.sh all project /path/to/your-app
```
