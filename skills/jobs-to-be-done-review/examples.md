# Jobs To Be Done Review — Additional Examples

## Example 1: Pass — Trigger-tied enterprise hire

### Input
Feature: “Evidence Export” from Compliance dashboard. Situation: SOC2 audit week. Trigger: auditor request. Functional: assemble control evidence. Emotional: reduce fear of failing audit. Social: appear prepared to CISO. Flow starts from “Audit request” object; exports PDF + control map.

### Expected
Overall **4–5**. Strong situation/trigger; social artifact present.

---

## Example 2: Fail — Solution looking for a job

### Input
“We built vector search—let’s add a smart knowledge chat to the admin console.” No interviews. Metric: chat sessions.

### Expected
Situation/trigger **1**; overall ≤2. Smoke-test demand via switch interviews before build.

---

## Example 3: Edge — Multi-job conflict

### Input
Same AI feature hired by on-call (speed) and by compliance (change control). Speed wants one-click apply; compliance wants dual approval.

### How to score
Do not average jobs. Split modes or personas-as-situations; fail if one job silently overrides the other. Recommend explicit “break-glass” vs “controlled change” paths.
