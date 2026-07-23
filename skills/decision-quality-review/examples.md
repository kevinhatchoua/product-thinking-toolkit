# Decision Quality Review — Additional Examples

## Example 1: Pass — Two-way door with falsifiers

### Input
Decision: rewrite empty-state copy and add secondary CTA. Flagged 50/50 experiment; kill if activation −2pp; revisit in 14 days. Assumptions listed (users miss primary CTA).

### Expected
Overall **5/5** on process. Low stakes; evidence plan matches door.

---

## Example 2: Fail — Data model one-way on anecdote

### Input
“Collapse Project/Tenant/Workspace into one object permanently; migration next sprint.” Justification: one PM dislikes the words. No user research. Public API already exposes three resources.

### Expected
Reversibility Critical fail; evidence E0; overall **1**. Require research + compatibility layer.

---

## Example 3: Edge — Deadline pressure

### Input
Conference launch forces GA. Safety metrics incomplete.

### How to score
Deadline is not evidence. Recommend conference **demo** behind flag (two-way) vs GA (one-way). Fail if conference marketing implies GA safety.
