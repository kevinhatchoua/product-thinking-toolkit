# UX Heuristic Review — Checklist

Mark each item **Pass / Fail / N/A**. Record evidence in the Findings schema for every Fail.

## NNg 10 heuristics

| ID | Heuristic | Pass criteria (short) | P/F/NA |
|----|-----------|----------------------|--------|
| H1 | Visibility of system status | Loading, success, failure, async progress always clear | |
| H2 | System matches real world | Domain language; natural order; familiar metaphors | |
| H3 | User control and freedom | Cancel, undo, back, exit with clear data consequences | |
| H4 | Consistency and standards | Patterns match product + platform conventions | |
| H5 | Error prevention | Constraints, confirmations proportional to risk | |
| H6 | Recognition rather than recall | Options visible; no forced memory of IDs/policies | |
| H7 | Flexibility and efficiency | Novice path + expert accelerators | |
| H8 | Aesthetic and minimalist design | Irrelevant info removed; hierarchy supports task | |
| H9 | Error recognition & recovery | Plain language, cause, next step; preserve input | |
| H10 | Help and documentation | Contextual help when task is non-obvious | |

## Enterprise / complex workflow extensions

| ID | Extension | Pass criteria (short) | P/F/NA |
|----|-----------|----------------------|--------|
| E1 | Role & permission clarity | Disabled actions explain missing permission | |
| E2 | Blast-radius / irreversibility | Destructive/bulk gated; impact summarized | |
| E3 | Multi-object operations | Bulk select, filters, partial failure clarity | |
| E4 | Long-running / async | Progress, cancel/resume, completion signal | |
| E5 | Cross-session resume | Drafts/deep links/back stack behave predictably | |
| E6 | Config intelligibility | Defaults explained; dependencies & effective state shown | |
| E7 | Human observability | Events/logs actionable for operators | |
| E8 | Latency & partial data | Stale/optimistic states honest and recoverable | |

## Primary tasks reviewed

| Task | Persona | Result (Success / Struggle / Fail) | Blocking issues |
|------|---------|--------------------------------------|-----------------|
| | | | |
| | | | |

## Severity triage

| Sev | Count | Must fix before release? |
|-----|-------|--------------------------|
| 4 Catastrophe | | Yes |
| 3 Major | | Usually yes for primary tasks |
| 2 Minor | | Schedule |
| 1 Cosmetic | | Optional |

## Sign-off

- [ ] Task walkthroughs completed (not screenshot-only)  
- [ ] Output Schema filled  
- [ ] Owner: _______________ Date: _______________
