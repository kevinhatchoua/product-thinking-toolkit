# AI Transparency Review — Additional Examples

## Example 1: Pass — Draft assistant with citations

### Input
Support copilot answers from knowledge base. Each answer shows citations with deep links, “AI-generated — verify before sending,” Insert vs Copy, and edit before send. Sending to customer requires human click on Send. Thumbs feedback with categories. Admin can disable web tool.

### Expected
Overall **4–5/5**. Confirm citation fidelity (no fabricated sources)—if sources can be invented, fail B2 critically.

---

## Example 2: Fail — Confidence theater

### Input
Medical symptom chatbot shows “Confidence: 97%” green meter for every answer. Disclaimer in Terms only. No clinician escalation path.

### Expected findings
Trust calibration Critical; disclosure weak; safety Critical for domain. **Overall 1/5.** Recommend removing numeric confidence unless validated calibration exists; add escalation and hard domain limits.

---

## Example 3: Edge — Low-stakes autocomplete

### Input
Code comment autocomplete, ghost text, Tab to accept, Esc dismiss. No network side effects.

### How to score
Lighter bar on confirmations is OK. Still require: AI distinguishability (ghost text), easy dismiss, no silent multi-file writes. Overall can be **4/5** with minor disclosure nits.

---

## Example 4: Agent partial failure

### Input
Agent “Prepare launch”: creates branch (OK), opens PR (OK), posts Slack (fails). UI shows single green check “All done.”

### Expected
D3 Critical/High. Remediation: per-step status, retry failed step, do not claim global success.
