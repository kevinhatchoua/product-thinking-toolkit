# Source

This skill is **plugged in** from the Red Hat UXD public catalog:

- **Upstream:** [rh-uxd/ai-helpers](https://github.com/rh-uxd/ai-helpers)
- **Path:** `plugins/uxd-workshop/skills/uxd-evaluate-design-heuristics/`
- **License:** Apache-2.0 (see upstream repository)

Prefer updating from upstream when the skill changes:

```bash
gh api "repos/rh-uxd/ai-helpers/contents/plugins/uxd-workshop/skills/uxd-evaluate-design-heuristics/SKILL.md" \
  --jq .content | base64 -d > skills/uxd-evaluate-design-heuristics/SKILL.md
```

Do not diverge casually — product-thinking-toolkit vendors a snapshot for one-install convenience.
