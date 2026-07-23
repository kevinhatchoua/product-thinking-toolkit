# AI Transparency Review — Checklist

Mark **Pass / Fail / N/A**. Critical fails on Action safety or hidden automation block GA.

## A. Disclosure & identity

| # | Check | P/F/NA | Notes |
|---|-------|--------|-------|
| A1 | Users can tell when AI is involved (labels, surfaces) | | |
| A2 | AI output distinguishable from system-of-record data | | |
| A3 | Task-relevant limitations disclosed near decision (not only legal pages) | | |
| A4 | No deceptive anthropomorphism implying human or infallible judgment | | |
| A5 | Proactive/automatic AI is disclosed on first encounter | | |

## B. Trust calibration

| # | Check | P/F/NA | Notes |
|---|-------|--------|-------|
| B1 | UI does not display fake precision / uncalibrated confidence theater | | |
| B2 | Retrieval answers expose inspectable sources when applicable | | |
| B3 | High-stakes flows prompt verification before reliance | | |
| B4 | Uncertainty communicated in actionable terms (“may miss…”, “verify…”) | | |

## C. Human control & recovery

| # | Check | P/F/NA | Notes |
|---|-------|--------|-------|
| C1 | Preview or staged apply before destructive/persistent changes | | |
| C2 | Undo / history / revert available after apply | | |
| C3 | Users can edit AI output freely | | |
| C4 | Stop/cancel works for streaming and multi-step agents | | |
| C5 | Rejecting AI is as easy as accepting | | |

## D. Action safety (tools / agents / side effects)

| # | Check | P/F/NA | Notes |
|---|-------|--------|-------|
| D1 | Risk-tiered confirmation for external writes / spend / IAM / delete | | |
| D2 | Least-privilege tool access; unused tools not exposed | | |
| D3 | Partial failures in multi-step agents are visible and remediable | | |
| D4 | Clear attribution: what changed, when, by AI vs user | | |

## E. Feedback, privacy, governance (RMF Measure/Manage/Govern)

| # | Check | P/F/NA | Notes |
|---|-------|--------|-------|
| E1 | In-product report/feedback for bad or harmful outputs | | |
| E2 | Users/admins can disable AI features or tighten tools | | |
| E3 | Data use (prompts, retrieval, training) explainable in-context | | |
| E4 | Failures (model down, refusal, permission errors) have graceful UX | | |

## Microsoft RAI quick map

| Theme | Primary checklist sections |
|-------|----------------------------|
| Accountability | C, D, E |
| Transparency | A, B |
| Fairness | A3, B3, E1 (plus research escalation) |
| Reliability & safety | B, C, D |
| Privacy & security | E3, D2 |
| Inclusiveness | C, E4 (+ a11y skill if needed) |

## NIST AI RMF quick map

| Function | What to look for in UX |
|----------|------------------------|
| Govern | Admin policies, allowlists, effective policy visibility |
| Map | Use-context limits, misuse warnings |
| Measure | Feedback, eval hooks, quality reporting |
| Manage | Undo, disable, incident rollback, error recovery |

## Sign-off

- [ ] System card completed  
- [ ] Output Schema filled  
- [ ] Security/Privacy partner pinged if D\* or E3 Fail  
- [ ] Owner: _______________ Date: _______________
