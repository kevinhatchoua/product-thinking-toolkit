# UX Heuristic Review — Additional Examples

## Example 1: Pass — Async job with recoverable failure

### Input
“Export report” opens a panel: queued → running (percent) → complete with Download, or failed with error code + “Retry” + link to docs. User can navigate away; bell notifies on completion.

### Expected
H1/E4 strong (4–5). Note any missing cancel if exports are long and costly.

---

## Example 2: Fail — Settings mystery toggles

### Input
Security settings page with 12 toggles labeled with internal flags (`enable_v2_auth_flow`). No descriptions. Saving applies org-wide with a green toast “Saved.” No audit of who changed what.

### Expected findings
H6/H2 (jargon), E6 (config intelligibility), E2/E7 (org-wide blast radius + no audit). **Overall ≤ 2/5.**

---

## Example 3: Edge — Expert density vs minimalism

### Input
NOC dashboard shows 40 metrics. New users feel overwhelmed; experts refuse a “simple mode” that hides correlating signals.

### How to score
Do **not** fail H8 solely for density. Evaluate whether hierarchy, filtering, saved views, and progressive disclosure serve both personas (H7 + H8). Fail if critical alerts compete equally with vanity charts.

---

## Example 4: Form error recovery

### Input
100-field compliance form clears all fields on server 500. Error: “Something went wrong.”

### Expected
H9 catastrophe (Sev 4). Remediation: preserve input, idempotent submit, specific error, draft autosave.
