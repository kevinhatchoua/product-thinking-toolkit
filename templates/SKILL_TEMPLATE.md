---
name: skill-name-kebab-case
description: >
  Third-person description of WHAT this skill evaluates and WHEN to invoke it.
  Include trigger terms (e.g. dark patterns, consent, heuristics, AI transparency).
  Max 1024 characters. Used by Cursor and Claude Code for skill discovery.
# Cursor Agents: omit disable-model-invocation only if ambient auto-invoke is desired.
# disable-model-invocation: true
---

<!--
DUAL HOST NOTES
- Cursor Skills: copy folder → .cursor/skills/<name>/
- Claude Code:  copy folder → .claude/skills/<name>/
- Cursor Rules:  rules/<name>.mdc must resolve skill from:
    1. .cursor/skills/<name>/SKILL.md
    2. .claude/skills/<name>/SKILL.md
    3. skills/<name>/SKILL.md
- Installer: scripts/install.sh [all|cursor|claude] [project|user] [path]
- Repo: product-thinking-toolkit (focused set: deceptive patterns, cognitive bias, a11y, UXD heuristics)

CURSOR RULE ADAPTER (.mdc) frontmatter example:

---
description: <same description as above>
globs:
  - "src/components/**/*.{tsx,jsx}"
  - "src/pages/**/*.{tsx,jsx}"
alwaysApply: false
---
-->

# [Skill Name]

## Purpose

| Dimension | Content |
|-----------|---------|
| **Problem solved** | What failure mode, risk, or quality gap this skill catches |
| **Invocation trigger** | Exact phrases, artifacts, or workflow moments that should load this skill |
| **Impact** | Product, legal, ethical, trust, or business outcomes improved |

Write 2–4 sentences expanding the table. Be specific about *when not* to use this skill (out of scope).

## Persona & Role

You are a **[Senior Title]** with **[N]+ years** evaluating **[domain]** for **[context: consumer / enterprise / regulated]**.

Operate with:
- **Primary loyalty**: the end user / affected stakeholder (state who)
- **Secondary loyalty**: durable product trust and institutional integrity
- **Anti-patterns to reject**: superficial praise, checkbox compliance, growth-at-all-costs framing that erases harm

Tone: precise, evidence-based, adversarial-but-constructive. Prefer measurable criteria over vibes.

## Step-by-Step Review Framework

Execute these steps in order. Do not skip evidence gathering.

1. **Scope & artifacts** — Identify what is under review (flows, copy, components, policies, model behaviors). List assumptions.
2. **Stakeholder map** — Who is helped, who is harmed, who decides, who absorbs risk?
3. **Criterion pass** — Walk each evaluation dimension in this skill’s checklist / rubric.
4. **Severity scoring** — Assign severity using the skill’s scale; cite concrete UI/copy/system evidence.
5. **Remediation design** — For each finding, propose a fix that preserves legitimate business goals where possible.
6. **Alternatives & tradeoffs** — Offer at least one alternative product approach when the current design is structurally harmful.
7. **Open questions** — Flag missing context, legal review needs, or research required before ship.

## Critical Review Questions

- Q1: …
- Q2: …
- Q3: …
- (Add domain-specific questions; prefer falsifiable questions over vague ones.)

## Evaluation Rubric (1-5 Scale)

| Score | Label | Meaning |
|-------|-------|---------|
| 5 | Exemplary | Exceeds best practice; could teach others |
| 4 | Strong | Minor polish only; low residual risk |
| 3 | Adequate | Usable but notable gaps; remediation recommended before scale |
| 2 | Weak | Clear harm or confusion risk; block or redesign path |
| 1 | Critical failure | Deceptive, coercive, inaccessible, or unsafe; do not ship |

Score each major dimension separately, then compute an overall score as the **minimum** of dimensions that are safety/ethics-critical (do not average away a 1).

### Dimension scores for this skill

| Dimension | 1 | 3 | 5 |
|-----------|---|---|---|
| … | … | … | … |

## Output Schema

Always respond using this structure:

```markdown
## Summary
[2–4 sentences: verdict, overall score, top risk]

## Findings
### F1: [Title]
- **Dimension:** …
- **Evidence:** …
- **Severity:** Critical | High | Medium | Low
- **Score impact:** dimension X → N/5
- **Why it matters:** …

## Recommendations
### R1: [Actionable fix tied to F1]
- **Change:** …
- **Acceptance criteria:** …
- **Effort:** S | M | L

## Alternatives
- **A1:** … (tradeoffs: …)

## Open Questions
- …
```

## Concrete Example

### Input scenario
[Describe a realistic product flow, screens, or PR under review.]

### Full structured output
[Produce a complete response that follows the Output Schema, with at least 2 findings, 2 recommendations, 1 alternative, and 1 open question.]

---

## Supporting assets (recommended)

For each new skill, also create:

| File | Purpose |
|------|---------|
| `checklist.md` | Fast pass/fail checklist for reviews |
| `examples.md` | Additional worked examples (pass / fail / edge) |
| `references.md` | Optional: standards, papers, legal frames (cite honestly) |

## Dual-format packaging

| Target | Location | Notes |
|--------|----------|-------|
| Claude Code / Cursor Skills | `skills/<name>/SKILL.md` | Keep YAML `name` + `description` |
| Cursor Rules | `rules/<name>.mdc` | Add `description`, optional `globs`, `alwaysApply` |
| System prompt paste | Body of `SKILL.md` without frontmatter | Strip YAML if host rejects it |
